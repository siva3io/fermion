package customers

import "gorm.io/datatypes"

/*
 Copyright (C) 2022 Eunimart Omnichannel Pvt Ltd. (www.eunimart.com)
 All rights reserved.
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
type CustomersResponseDto struct {
	ID              uint           //Eunimart customerID
	Email           string         `json:"email"`            // Eunimart Registered Email
	ExternalDetails datatypes.JSON `json:"external_details"` // to save gateway customer id and gateway
	CurrencyID      string         `json:"currency_id"`      // user Currency
	UserId          uint           `json:"user_id" gorm:""`  // CoreUserID
	Gateway         string         `json:"gateway"`
}
