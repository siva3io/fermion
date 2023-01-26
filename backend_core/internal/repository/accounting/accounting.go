package accounting

import (
	"errors"

	"fermion/backend_core/db"
	"fermion/backend_core/internal/model/accounting"

	"gorm.io/gorm"
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
type Accounting interface {
	CreateAccounting(data *accounting.UserAccountingLink) error
	UpdateAccounting(query map[string]interface{}, data *accounting.UserAccountingLink) error
	FindOne(query map[string]interface{}) (accounting.UserAccountingLink, error)
}

type AccountingRepo struct {
	Db *gorm.DB
}

func NewAccountingRepo() *AccountingRepo {
	db := db.DbManager()
	return &AccountingRepo{db}
}

func (r *AccountingRepo) CreateAccounting(data *accounting.UserAccountingLink) error {
	res := r.Db.Model(&accounting.UserAccountingLink{}).Create(&data)
	if res.Error != nil {
		return res.Error
	}
	return nil
}

func (r *AccountingRepo) UpdateAccounting(query map[string]interface{}, data *accounting.UserAccountingLink) error {

	res := r.Db.Model(&accounting.UserAccountingLink{}).Where(query).Updates(&data)
	if res.Error != nil {
		return res.Error
	}

	return nil
}

func (r *AccountingRepo) FindOne(query map[string]interface{}) (accounting.UserAccountingLink, error) {
	var data accounting.UserAccountingLink
	err := r.Db.Model(&accounting.UserAccountingLink{}).Where(query).First(&data)
	if err.RowsAffected == 0 {
		return data, errors.New("record not found")
	}
	if err.Error != nil {
		return data, err.Error
	}
	return data, nil
}
