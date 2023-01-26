--
-- PostgreSQL database dump
--

-- Copyright (C) 2022 Eunimart Omnichannel Pvt Ltd. (www.eunimart.com)
-- All rights reserved.
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Lesser General Public License v3.0 as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Lesser General Public License v3.0 for more details.
-- You should have received a copy of the GNU Lesser General Public License v3.0
-- along with this program.  If not, see <https://www.gnu.org/licenses/lgpl-3.0.html/>.

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;
SET session_replication_role = 'replica';

--
-- Data for Name: core_app_modules; Type: TABLE DATA; Schema: public; Owner: eunimartuser
--

INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (1,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'MDM', 'MDM', NULL, NULL, NULL,'files/icons/MDM.svg', 2);

INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (2,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'ORDER', 'Order', NULL, NULL, NULL,'files/icons/Orders.svg', 3);

INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (3,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'INVENTORY', 'Inventory', NULL, NULL, NULL,'files/icons/Inventory.svg', 4);

INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (4,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'INVENTORY_TASK','Inventory Task', NULL, NULL, NULL,'files/icons/Inventory_tasks.svg', 5);

INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (5,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'ACCOUNTING', 'Accounting', NULL, NULL, NULL,'files/icons/Accounting.svg', 6);

INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (6,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'RETURNS_MANAGEMENT', 'Returns Management', NULL, NULL, NULL,'files/icons/Returns.svg', 7);

INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (7,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'SHIPPING_MANAGEMENT','Shipping Management', NULL, NULL, NULL,'files/icons/Shipping.svg', 8);

INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (8,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'OMNICHANNEL_HUB', 'OmniChannel Hub', NULL, NULL, NULL,'files/icons/Omnichannel.svg', 9);

INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (9,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'PRODUCTS', 'Products', 1, 4021,'http://localhost/products',NULL, 1);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (10,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'CONTACTS', 'Contacts', 1, 4022,'http://localhost/contacts',NULL, 2);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (11,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'LOCATIONS', 'Locations', 1, 4023,'http://localhost/locations',NULL, 3);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (12,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'UOM', 'UoM', 1, 4001,'http://localhost/uom',NULL, 4);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (13,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'PRICING', 'Pricing', 1, 4003,'http://localhost/pricing',NULL, 5);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (14,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'INVENTORY_DECENTRALIZED', 'Inventory-Decentralized', 1, 4018,'http://localhost/inventory',NULL, 6);


INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (15,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'SALES_ORDERS', 'Sales Orders', 2, 4008,'http://localhost/salesOrders',NULL, 1);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (16,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'IST', 'IST', 2, 4009,'http://localhost/ist',NULL, 2);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (17,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'SCRAP_ORDERS', 'Scrap Orders', 2, 4002,'http://localhost/scrapOrders',NULL, 3);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (18,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'DELIVERY_ORDERS', 'Delivery Orders', 2, 4019,'http://localhost/deliveryOrders',NULL, 4);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (19,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'PURCHASE_ORDERS', 'Purchase Orders', 2, 4020,'http://localhost/purchaseOrders',NULL, 5);


INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (20,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'ASN', 'ASN', 3, 4006,'http://localhost/asn',NULL, 1);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (21,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'GRN', 'GRN', 3, 4007,'http://localhost/grn',NULL, 2);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (22,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'INVENTORY_ADJUSTMENT', 'Inventory Adjustment', 3, 4018,'http://localhost/inventoryAdjustment',NULL, 3);


INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (23,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'PICK_LIST', 'Pick List', 4, 4018,'http://localhost/pickList',NULL, 1);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (24,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'CYCLE_COUNT', 'Cycle Count', 4, 4018,'http://localhost/cycleCount',NULL, 2);


INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (25,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'SALES_INVOICE', 'Sales Invoice', 5, 4024,'http://localhost/salesInvoice',NULL, 1);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (26,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'PURCHASE_INVOICE', 'Purchase Invoice', 5, 4024,'http://localhost/purchaseInvoice',NULL, 2);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (27,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'DEBIT_NOTE', 'Debit Note', 5, 4010,'http://localhost/debitNote',NULL, 3);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (28,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'CREDIT_NOTE', 'Credit Note', 5, 4010,'http://localhost/creditNote',NULL, 4);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (29,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'CURRENCY_EXCHANGE', 'Currency & Exchange', 5, 4010,'http://localhost/currencyExchange',NULL, 5);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (30,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'PAYMENT_TERMS_RECORD_PAYMENT', 'Payment Terms & Record Payment', 5, 4010,'http://localhost/paymentTermsRecordPayment',NULL, 6);


INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (31,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'PURCHASE_RETURNS', 'Purchase Return', 6, 4011,'http://localhost/purchaseReturns',NULL, 1);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (32,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'SALES_RETURNS', 'Sales Returns', 6, 4012,'http://localhost/salesReturns',NULL, 2);


INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (33,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'SHIPPING_ORDERS', 'Shipping Orders', 7, 4013,'http://localhost/shippingOrders',NULL, 1);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (34,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'NDR', 'NDR', 7, 4014,'http://localhost/ndr',NULL, 2);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (35,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'RTO', 'RTO', 7, 4014,'http://localhost/rto',NULL, 3);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (36,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'WD', 'WD', 7, 4014,'http://localhost/ndr',NULL, 4);


INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (37,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'VIRTUAL_WAREHOUSE', 'Virtual Warehouse', 8, 4015,'http://localhost/virtualWarehouse',NULL, 1);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (38,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'RETAIL', 'Retail', 8, 4015,'http://localhost/retail',NULL, 2);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (39,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'WEBSTORES', 'Webstores', 8, 4016,'http://localhost/webstores',NULL, 3);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (40,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'MARKETPLACES', 'Marketplaces', 8, 4016,'http://localhost/marketplaces',NULL, 4);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (41,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'LOGISTICS_PARTNERS', 'Logistics Partners', 8, 4017,'http://localhost/logisticsPartners',NULL, 5);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (42,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'LOCAL_WAREHOUSE', 'Local Warehouse', 8, 4017,'http://localhost/localWarehouse',NULL, 6);

INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (43,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'ADMIN', 'Admin', NULL, NULL,NULL,'files/icons/profile.svg', 1);

INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (44,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'LOOKUP_TYPES', 'Lookup Types', 43, 4027,'http://localhost/lookup-types',NULL, 1);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (45,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'LOOKUP_CODES', 'Lookup Codes', 43, 4027,'http://localhost/lookup-codes',NULL, 2);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (46,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'ACCESS_TEMPLATES', 'Access Templates', 43, 4027,'http://localhost/access-templates',NULL, 3);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (47,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'POS', 'pos', 8, 4004, 'http://localhost/pos', NULL, 7);
INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (48,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'OMNI_ACCOUNTING', 'Accounting', 8, 4004, 'http://localhost/accounting', NULL, 8);


INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (49,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'SETTINGS', 'Settings', NULL, NULL, NULL,'files/icons/MDM.svg', 10);

INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (50,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'USER_PROFILE', 'User Profile', 49, 4028, 'http://localhost/profile','files/icons/Omnichannel.svg', 1);

INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (51,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'ORGANISATION', 'Organisation', 49, 4028, 'http://localhost/organisation','files/icons/Omnichannel.svg', 2);

INSERT INTO public.core_app_modules(id, is_enabled, is_active, created_by, updated_date, updated_by, deleted_by, created_date, company_id, app_id, deleted_at, module_code, module_name, parent_module, port_number, route_path, image_option, item_sequence)VALUES (52,true, true, 1, '2022-06-21 16:11:58.270482+05:30', 1, NULL, '2022-06-21 16:11:58.270482+05:30', 1, NULL, NULL, 'BUSINESS_SETTINGS', 'Business Settings', 49, 4005, 'http://localhost/settings', 'files/icons/Omnichannel.svg', 3);

SET session_replication_role = 'origin';


--
-- Name: core_app_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eunimartuser
--

select setval( pg_get_serial_sequence('public.core_app_modules', 'id'), (select max(id) from public.core_app_modules));


--
-- PostgreSQL database dump complete
--
