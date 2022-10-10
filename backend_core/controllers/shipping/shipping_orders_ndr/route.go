package shipping_orders_ndr

import (
	cmiddleware "fermion/backend_core/middleware"

	"github.com/labstack/echo/v4"
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
func (h *handler) Route(g *echo.Group) {
	g.POST("/create", h.CreateNDR, cmiddleware.Authorization)
	g.POST("/bulk_create", h.BulkCreateNDR, cmiddleware.Authorization)
	g.GET("/:id", h.GetNDR, cmiddleware.Authorization)
	g.GET("", h.GetAllNDR, cmiddleware.Authorization)
	g.GET("/dropdown", h.GetAllNDRDropDown, cmiddleware.Authorization)
	g.POST("/:id/update", h.UpdateNDR, cmiddleware.Authorization)
	g.DELETE("/:id/delete", h.DeleteNDR, cmiddleware.Authorization)
	g.DELETE("/ndr_lines/:id/delete", h.DeleteNDRLines, cmiddleware.Authorization)
}
