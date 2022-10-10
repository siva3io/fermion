package payments

import (
	model_core "fermion/backend_core/internal/model/core"
)

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
type Wallets struct {
	model_core.Model
	UserId               uint                 `json:"user_id" gorm:""`
	User                 model_core.CoreUsers `json:"user" gorm:"foreignKey:UserId; references:ID"`
	UserAmount           float64              `json:"user_amount" gorm:""`
	TotalUserTopupAmount float64              `json:"total_user_topup_amount" gorm:""`
	Currency             string               `json:"currency" gorm:"type:text"`
	CurrencyCode         model_core.Currency  `json:"currency_code" gorm:"foreignKey:Currency; references:CurrencyCode"`
	Status               string               `json:"status" gorm:"type:text"`
	Gateway              string               `json:"gateway" gorm:"type:text"`
}
