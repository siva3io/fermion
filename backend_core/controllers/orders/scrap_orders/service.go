package scrap_orders

import (
	"encoding/json"
	"errors"
	"fmt"
	"strconv"

	// "fermion/backend_core/controllers/inventory_orders/grn"
	inv_service "fermion/backend_core/controllers/mdm/basic_inventory"
	shipping_order "fermion/backend_core/controllers/shipping/shipping_orders"
	"fermion/backend_core/internal/model/orders"
	"fermion/backend_core/internal/model/pagination"
	inventory_order_repo "fermion/backend_core/internal/repository/inventory_orders"
	orders_repo "fermion/backend_core/internal/repository/orders"
	access_checker "fermion/backend_core/pkg/util/access"
	"fermion/backend_core/pkg/util/helpers"
	res "fermion/backend_core/pkg/util/response"

	"gorm.io/datatypes"
)

/*
Copyright (C) 2022 Eunimart Omnichannel Pvt Ltd. (www.eunimart.com)
All rights reserved.
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License v3.0 as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License v3.0 for more details.
You should have received a copy of the GNU Lesser General Public License v3.0
along with this program.  If not, see <https://www.gnu.org/licenses/lgpl-3.0.html/>.
*/
type Service interface {
	CreateScrapOrder(data *ScrapOrders, token_id string, access_template_id string) (uint, error)
	BulkCreateScrapOrder(data *[]ScrapOrders, token_id string, access_template_id string) error
	UpdateScrapOrder(id uint, data *ScrapOrders, token_id string, access_template_id string) error
	AllScrapOrders(p *pagination.Paginatevalue, token_id string, access_template_id string, access_action string) ([]ScrapOrdersResponseDTO, error)
	FindScrapOrder(id uint, token_id string, access_template_id string) (interface{}, error)
	DeleteScrapOrder(id uint, user_id uint, token_id string, access_template_id string) error
	DeleteScrapOrderLines(query interface{}, token_id string, access_template_id string) error
	GetScrapOrderTab(id, tab string, page *pagination.Paginatevalue, access_template_id string, token_id string) (interface{}, error)
}

type service struct {
	scrapRepository        orders_repo.ScrapOrders
	basicInventoryService  inv_service.Service
	shipping_order_service shipping_order.Service
	grn_repositary         inventory_order_repo.GRN
}

func NewService() *service {
	shipping_order_service := shipping_order.NewService()
	grn_service := inventory_order_repo.NewGRN()
	return &service{orders_repo.NewScrap(), inv_service.NewService(), shipping_order_service, grn_service}
}

func (s *service) CreateScrapOrder(data *ScrapOrders, token_id string, access_template_id string) (uint, error) {

	token_user_id := helpers.ConvertStringToUint(token_id)
	access_module_flag, data_access := access_checker.ValidateUserAccess(access_template_id, "CREATE", "SCRAP_ORDERS", *token_user_id)
	if !access_module_flag {
		return 0, fmt.Errorf("you dont have access for create scrap order at view level")
	}
	if data_access == nil {
		return 0, fmt.Errorf("you dont have access for create scrap order at data level")
	}
	if data.IsShipping != nil && *data.IsShipping {
		data.Shipping_details.CreatedByID = data.CreatedByID
		res, err := s.shipping_order_service.CreateShippingOrder(&data.Shipping_details, token_id, access_template_id)
		if err != nil {
			return 0, err
		}
		data.ShippingOrderId = &res.ID
	}

	var ScrapData *orders.ScrapOrders

	dto, err := json.Marshal(*data)
	if err != nil {
		return 0, res.BuildError(res.ErrUnprocessableEntity, err)
	}
	err = json.Unmarshal(dto, &ScrapData)
	if err != nil {
		return 0, res.BuildError(res.ErrUnprocessableEntity, err)
	}
	// var fetchData orders.DeliveryOrders
	if data.AutoCreateScrapNumber {
		ScrapData.Scrap_order_number = helpers.GenerateSequence("Scrap", token_id, "scrap_orders")
	}
	if data.AutoGenerateReferenceNumber {
		ScrapData.Reference_id = helpers.GenerateSequence("REF", token_id, "scrap_orders")
	}

	result, _ := helpers.UpdateStatusHistory(ScrapData.Status_history, ScrapData.Status_id)
	ScrapData.Status_history = result
	ScrapData.Status_history = nil
	id, err := s.scrapRepository.SaveScrapOrder(ScrapData)

	data_inv := map[string]interface{}{
		"id":            ScrapData.ID,
		"order_lines":   ScrapData.Order_lines,
		"order_type":    "scrap_order",
		"is_update_inv": true,
		"is_credit":     false,
	}

	//updating the inventory & Committed Stock
	go s.basicInventoryService.UpdateInventory(data_inv, token_id, access_template_id)

	return id, err
	//}
	//return 0, nil
}

func (s *service) UpdateScrapOrder(id uint, data *ScrapOrders, token_id string, access_template_id string) error {
	token_user_id := helpers.ConvertStringToUint(token_id)
	access_module_flag, data_access := access_checker.ValidateUserAccess(access_template_id, "UPDATE", "SCRAP_ORDERS", *token_user_id)
	if !access_module_flag {
		return fmt.Errorf("you dont have access for update scrap order at view level")
	}
	if data_access == nil {
		return fmt.Errorf("you dont have access for update scrap order at data level")
	}
	var ScrapData *orders.ScrapOrders
	dto, err := json.Marshal(*data)
	if err != nil {
		return res.BuildError(res.ErrUnprocessableEntity, err)
	}
	err = json.Unmarshal(dto, &ScrapData)
	if err != nil {
		return res.BuildError(res.ErrUnprocessableEntity, err)
	}

	old_data, er := s.scrapRepository.FindScrapOrderById(id)
	if er != nil {
		return er
	}
	old_status := old_data.Status_id
	new_status := data.Status_id

	if new_status != old_status && new_status != 0 {
		result, _ := helpers.UpdateStatusHistory(old_data.Status_history, ScrapData.Status_id)
		ScrapData.Status_history = result
		final_status, _ := helpers.GetLookupcodeId("SCRAP_ORDER_STATUS", "SHIPPED_AND_RECEIVED")
		partial_status1, _ := helpers.GetLookupcodeId("SCRAP_ORDER_STATUS", "SHIPPED_AND_PARTIALLY_RECEIVED")
		partial_status, _ := helpers.GetLookupcodeId("SCRAP_ORDER_STATUS", "PARTIALLY_SHIPPED_AND_PARTIALLY_RECEIVED")
		if data.Status_id == final_status || data.Status_id == partial_status || data.Status_id == partial_status1 {
			data_inv := map[string]interface{}{
				"id":            ScrapData.ID,
				"order_lines":   ScrapData.Order_lines,
				"order_type":    "scrap_order",
				"is_update_inv": false,
				"is_credit":     false,
			}

			//updating the Committed Stock
			go s.basicInventoryService.UpdateInventory(data_inv, token_id, access_template_id)
		}
	}

	err = s.scrapRepository.UpdateScrapOrder(id, ScrapData)
	if er != nil {
		return err
	}
	for _, order_line := range ScrapData.Order_lines {
		query := map[string]interface{}{"scrap_id": id, "product_id": order_line.Product_id}
		count, err1 := s.scrapRepository.UpdateScrapOrderLines(query, order_line)
		if err1 != nil {
			return err1
		} else if count == 0 {
			order_line.Scrap_id = id
			e := s.scrapRepository.CreateScrapOrderLines(order_line)
			if e != nil {
				return e
			}
		}
	}
	return nil
	//}
	//return nil
}

func (s *service) AllScrapOrders(p *pagination.Paginatevalue, token_id string, access_template_id string, access_action string) ([]ScrapOrdersResponseDTO, error) {
	token_user_id := helpers.ConvertStringToUint(token_id)
	access_module_flag, data_access := access_checker.ValidateUserAccess(access_template_id, access_action, "SCRAP_ORDERS", *token_user_id)
	if !access_module_flag {
		return nil, fmt.Errorf("you dont have access for list scrap order at view level")
	}
	if data_access == nil {
		return nil, fmt.Errorf("you dont have access for list scrap order at data level")
	}
	result, err := s.scrapRepository.FindAllScrapOrders(p)
	var response []ScrapOrdersResponseDTO
	for _, data := range result {
		var scraporderdata ScrapOrdersResponseDTO
		mdata, _ := json.Marshal(data)
		json.Unmarshal(mdata, &scraporderdata)
		response = append(response, scraporderdata)
	}
	return response, err
	//}
	//return nil, nil
}

func (s *service) FindScrapOrder(id uint, token_id string, access_template_id string) (interface{}, error) {
	token_user_id := helpers.ConvertStringToUint(token_id)
	access_module_flag, data_access := access_checker.ValidateUserAccess(access_template_id, "READ", "SCRAP_ORDERS", *token_user_id)
	if !access_module_flag {
		return nil, fmt.Errorf("you dont have access for view scrap order at view level")
	}
	if data_access == nil {
		return nil, fmt.Errorf("you dont have access for view scrap order at data level")
	}
	result, err := s.scrapRepository.FindScrapOrderById(id)

	if err != nil {
		return result, err
	}
	if result.ShippingOrderId != nil && *result.ShippingOrderId != 0 {
		shipping_order_response, _ := s.shipping_order_service.GetShippingOrder(*result.ShippingOrderId, token_id, access_template_id)
		var shipping_order_data datatypes.JSON
		dto, _ := json.Marshal(shipping_order_response)
		json.Unmarshal(dto, &shipping_order_data)
	}

	var response ScrapOrdersResponseDTO
	mdata, err := json.Marshal(result)
	if err != nil {
		return nil, err
	}
	json.Unmarshal(mdata, &response)
	if err != nil {
		return nil, err
	}

	return response, nil
	//}
	//return orders.ScrapOrders{}, nil
}

func (s *service) DeleteScrapOrder(id uint, user_id uint, token_id string, access_template_id string) error {

	token_user_id := helpers.ConvertStringToUint(token_id)
	access_module_flag, data_access := access_checker.ValidateUserAccess(access_template_id, "DELETE", "SCRAP_ORDERS", *token_user_id)
	if !access_module_flag {
		return fmt.Errorf("you dont have access for delete scrap order at view level")
	}
	if data_access == nil {
		return fmt.Errorf("you dont have access for delete scrap order at data level")
	}
	_, er := s.scrapRepository.FindScrapOrderById(id)
	if er != nil {
		return er
	}
	err := s.scrapRepository.DeleteScrapOrder(id, user_id)
	if err != nil {
		return err
	} else {
		query := map[string]interface{}{"scrap_id": id}
		er := s.scrapRepository.DeleteScrapOrderLines(query)
		if er != nil {
			return er
		}
	}
	return nil
	//}
	//return nil
}

func (s *service) DeleteScrapOrderLines(query interface{}, token_id string, access_template_id string) error {

	token_user_id := helpers.ConvertStringToUint(token_id)
	access_module_flag, data_access := access_checker.ValidateUserAccess(access_template_id, "DELETE", "SCRAP_ORDERS", *token_user_id)
	if !access_module_flag {
		return fmt.Errorf("you dont have access for delete scrap order at view level")
	}
	if data_access == nil {
		return fmt.Errorf("you dont have access for delete scrap order at data level")
	}
	_, er := s.scrapRepository.FindScrapOrderLines(query)
	if er != nil {
		return er
	}
	err := s.scrapRepository.DeleteScrapOrderLines(query)
	return err
	//}
	//return nil
}

func (s *service) BulkCreateScrapOrder(data *[]ScrapOrders, token_id string, access_template_id string) error {
	token_user_id := helpers.ConvertStringToUint(token_id)
	access_module_flag, data_access := access_checker.ValidateUserAccess(access_template_id, "CREATE", "SCRAP_ORDERS", *token_user_id)
	if !access_module_flag {
		return fmt.Errorf("you dont have access for create scrap order at view level")
	}
	if data_access == nil {
		return fmt.Errorf("you dont have access for create scrap order at data level")
	}
	var ScrapData *[]orders.ScrapOrders
	dto, err := json.Marshal(*data)
	if err != nil {
		return res.BuildError(res.ErrUnprocessableEntity, err)
	}
	err = json.Unmarshal(dto, &ScrapData)
	if err != nil {
		return res.BuildError(res.ErrUnprocessableEntity, err)
	}
	err = s.scrapRepository.BulkSaveScrapOrder(ScrapData)
	return err
	//}
	//return nil
}

func (s *service) GetScrapOrderTab(id, tab string, page *pagination.Paginatevalue, access_template_id string, token_id string) (interface{}, error) {

	token_user_id := helpers.ConvertStringToUint(token_id)
	access_module_flag, data_access := access_checker.ValidateUserAccess(access_template_id, "READ", "SCRAP_ORDERS", *token_user_id)
	if !access_module_flag {
		return nil, fmt.Errorf("you dont have access for view scrap order at view level")
	}
	if data_access == nil {
		return nil, fmt.Errorf("you dont have access for view scrap order at data level")
	}

	scrapOrderId, err := strconv.Atoi(id)
	if err != nil {
		return nil, err
	}

	if tab == "grn" {
		scrapPagination := new(pagination.Paginatevalue)
		source_document_type_id, _ := helpers.GetLookupcodeId("SCRAP_ORDERS_SOURCE_DOCUMENT_TYPES", "GRN")
		scrapPagination.Filters = fmt.Sprintf("[[\"id\",\"=\",%v],[\"source_document_type_id\",\"=\",%v]]", scrapOrderId, source_document_type_id)
		scrap_order, err := s.AllScrapOrders(scrapPagination, token_id, access_template_id, "LIST")
		if err != nil {
			return nil, err
		}
		if len(scrap_order) == 0 {
			return nil, errors.New("noo source document")
		}

		var scrapOrderSourceDoc map[string]interface{}
		scrapOrderSourceDocJson := scrap_order[0]
		dto, err := json.Marshal(scrapOrderSourceDocJson)
		if err != nil {
			return 0, res.BuildError(res.ErrUnprocessableEntity, err)
		}
		err = json.Unmarshal(dto, &scrapOrderSourceDoc)
		if err != nil {
			return 0, res.BuildError(res.ErrUnprocessableEntity, err)
		}

		scrapOrderSourceDocId := scrapOrderSourceDoc["id"]
		if scrapOrderSourceDocId == nil {
			return nil, errors.New("no source document")
		}

		grnPage := page
		grnPage.Filters = fmt.Sprintf("[[\"id\",\"=\",%v]]", scrapOrderSourceDoc["id"])
		data, err := s.grn_repositary.GetAllGRN(page)
		if err != nil {
			return nil, err
		}
		return data, nil
	}

	return nil, nil
}
