--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.4 (Ubuntu 14.4-1.pgdg20.04+1)

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
SET schema 'public';

--
-- Pick List Table Data
--

INSERT INTO public.pick_lists (pick_list_number, reference_number, source_document_type_id, assignee_to_id, select_customer_id,partner_id, warehouse_id, status_id, status_history, internal_notes, external_notes, attachment_files, start_date_time, end_date_time, total_items_to_pick, total_picked_items, price_list_id, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at,source_documents) VALUES ('PIC-001', 'REF1', (SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_SOURCE_DOCUMENT_TYPE' AND public.lookupcodes.lookup_code = 'SALES_ORDER'),1,1,1, 1,(SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_STATUS' AND public.lookupcodes.lookup_code = 'COMPLETED'), '[{"status": "In Progress", "updated_at": "2022-06-21T19:02:54.344772587+05:30"}]', 'Internal Notes', 'External Notes', '{}', '2222-06-01 12:00:00+05:30', '2222-06-10 12:00:00+05:30', 100, 150, 2, 1, true, true, 1, '2022-06-21 19:02:54.350723+05:30', 1, '2022-06-21 19:02:54.350723+05:30', 0,null,'{}');
INSERT INTO public.pick_lists (pick_list_number, reference_number, source_document_type_id, assignee_to_id, select_customer_id,partner_id, warehouse_id, status_id, status_history, internal_notes, external_notes, attachment_files, start_date_time, end_date_time, total_items_to_pick, total_picked_items, price_list_id, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at,source_documents) VALUES ('PIC-001', 'REF1', (SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_SOURCE_DOCUMENT_TYPE' AND public.lookupcodes.lookup_code = 'SALES_ORDER'),1,1,1, 1,(SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_STATUS' AND public.lookupcodes.lookup_code = 'COMPLETED'), '[{"status": "In Progress", "updated_at": "2022-06-21T19:02:54.344772587+05:30"}]', 'Internal Notes', 'External Notes', '{}', '2222-06-01 12:00:00+05:30', '2222-06-10 12:00:00+05:30', 100, 150, 2, 2, true, true, 1, '2022-06-21 19:02:54.350723+05:30', 1, '2022-06-21 19:02:54.350723+05:30', 0,null,'{}');
INSERT INTO public.pick_lists (pick_list_number, reference_number, source_document_type_id, assignee_to_id, select_customer_id,partner_id, warehouse_id, status_id, status_history, internal_notes, external_notes, attachment_files, start_date_time, end_date_time, total_items_to_pick, total_picked_items, price_list_id, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at,source_documents) VALUES ('PIC-001', 'REF1', (SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_SOURCE_DOCUMENT_TYPE' AND public.lookupcodes.lookup_code = 'SALES_ORDER'),1,1,1, 1,(SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_STATUS' AND public.lookupcodes.lookup_code = 'COMPLETED'), '[{"status": "In Progress", "updated_at": "2022-06-21T19:02:54.344772587+05:30"}]', 'Internal Notes', 'External Notes', '{}', '2222-06-01 12:00:00+05:30', '2222-06-10 12:00:00+05:30', 100, 150, 2, 3, true, true, 1, '2022-06-21 19:02:54.350723+05:30', 1, '2022-06-21 19:02:54.350723+05:30', 0,null,'{}');
INSERT INTO public.pick_lists (pick_list_number, reference_number, source_document_type_id, assignee_to_id, select_customer_id,partner_id, warehouse_id, status_id, status_history, internal_notes, external_notes, attachment_files, start_date_time, end_date_time, total_items_to_pick, total_picked_items, price_list_id, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at,source_documents) VALUES ('PIC-001', 'REF1', (SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_SOURCE_DOCUMENT_TYPE' AND public.lookupcodes.lookup_code = 'SALES_ORDER'),1,1,1, 1,(SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_STATUS' AND public.lookupcodes.lookup_code = 'COMPLETED'), '[{"status": "In Progress", "updated_at": "2022-06-21T19:02:54.344772587+05:30"}]', 'Internal Notes', 'External Notes', '{}', '2222-06-01 12:00:00+05:30', '2222-06-10 12:00:00+05:30', 100, 150, 2, 4, true, true, 1, '2022-06-21 19:02:54.350723+05:30', 1, '2022-06-21 19:02:54.350723+05:30', 0,null,'{}');
INSERT INTO public.pick_lists (pick_list_number, reference_number, source_document_type_id, assignee_to_id, select_customer_id,partner_id, warehouse_id, status_id, status_history, internal_notes, external_notes, attachment_files, start_date_time, end_date_time, total_items_to_pick, total_picked_items, price_list_id, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at,source_documents) VALUES ('PIC-001', 'REF1', (SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_SOURCE_DOCUMENT_TYPE' AND public.lookupcodes.lookup_code = 'SALES_ORDER'),1,1,1, 1,(SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_STATUS' AND public.lookupcodes.lookup_code = 'COMPLETED'), '[{"status": "In Progress", "updated_at": "2022-06-21T19:02:54.344772587+05:30"}]', 'Internal Notes', 'External Notes', '{}', '2222-06-01 12:00:00+05:30', '2222-06-10 12:00:00+05:30', 100, 150, 2, 5, true, true, 1, '2022-06-21 19:02:54.350723+05:30', 1, '2022-06-21 19:02:54.350723+05:30', 0,null,'{}');
INSERT INTO public.pick_lists (pick_list_number, reference_number, source_document_type_id, assignee_to_id, select_customer_id,partner_id, warehouse_id, status_id, status_history, internal_notes, external_notes, attachment_files, start_date_time, end_date_time, total_items_to_pick, total_picked_items, price_list_id, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at,source_documents) VALUES ('PIC-001', 'REF1', (SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_SOURCE_DOCUMENT_TYPE' AND public.lookupcodes.lookup_code = 'SALES_ORDER'),1,1,1, 1,(SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_STATUS' AND public.lookupcodes.lookup_code = 'COMPLETED'), '[{"status": "In Progress", "updated_at": "2022-06-21T19:02:54.344772587+05:30"}]', 'Internal Notes', 'External Notes', '{}', '2222-06-01 12:00:00+05:30', '2222-06-10 12:00:00+05:30', 100, 150, 2, 6, true, true, 1, '2022-06-21 19:02:54.350723+05:30', 1, '2022-06-21 19:02:54.350723+05:30', 0,null,'{}');
INSERT INTO public.pick_lists (pick_list_number, reference_number, source_document_type_id, assignee_to_id, select_customer_id,partner_id, warehouse_id, status_id, status_history, internal_notes, external_notes, attachment_files, start_date_time, end_date_time, total_items_to_pick, total_picked_items, price_list_id, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at,source_documents) VALUES ('PIC-001', 'REF1', (SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_SOURCE_DOCUMENT_TYPE' AND public.lookupcodes.lookup_code = 'SALES_ORDER'),1,1,1, 1,(SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_STATUS' AND public.lookupcodes.lookup_code = 'COMPLETED'), '[{"status": "In Progress", "updated_at": "2022-06-21T19:02:54.344772587+05:30"}]', 'Internal Notes', 'External Notes', '{}', '2222-06-01 12:00:00+05:30', '2222-06-10 12:00:00+05:30', 100, 150, 2, 7, true, true, 1, '2022-06-21 19:02:54.350723+05:30', 1, '2022-06-21 19:02:54.350723+05:30', 0,null,'{}');
INSERT INTO public.pick_lists (pick_list_number, reference_number, source_document_type_id, assignee_to_id, select_customer_id,partner_id, warehouse_id, status_id, status_history, internal_notes, external_notes, attachment_files, start_date_time, end_date_time, total_items_to_pick, total_picked_items, price_list_id, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at,source_documents) VALUES ('PIC-001', 'REF1', (SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_SOURCE_DOCUMENT_TYPE' AND public.lookupcodes.lookup_code = 'SALES_ORDER'),1,1,1, 1,(SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_STATUS' AND public.lookupcodes.lookup_code = 'COMPLETED'), '[{"status": "In Progress", "updated_at": "2022-06-21T19:02:54.344772587+05:30"}]', 'Internal Notes', 'External Notes', '{}', '2222-06-01 12:00:00+05:30', '2222-06-10 12:00:00+05:30', 100, 150, 2, 8, true, true, 1, '2022-06-21 19:02:54.350723+05:30', 1, '2022-06-21 19:02:54.350723+05:30', 0,null,'{}');
INSERT INTO public.pick_lists (pick_list_number, reference_number, source_document_type_id, assignee_to_id, select_customer_id,partner_id, warehouse_id, status_id, status_history, internal_notes, external_notes, attachment_files, start_date_time, end_date_time, total_items_to_pick, total_picked_items, price_list_id, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at,source_documents) VALUES ('PIC-001', 'REF1', (SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_SOURCE_DOCUMENT_TYPE' AND public.lookupcodes.lookup_code = 'SALES_ORDER'),1,1,1, 1,(SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_STATUS' AND public.lookupcodes.lookup_code = 'COMPLETED'), '[{"status": "In Progress", "updated_at": "2022-06-21T19:02:54.344772587+05:30"}]', 'Internal Notes', 'External Notes', '{}', '2222-06-01 12:00:00+05:30', '2222-06-10 12:00:00+05:30', 100, 150, 2, 9, true, true, 1, '2022-06-21 19:02:54.350723+05:30', 1, '2022-06-21 19:02:54.350723+05:30', 0,null,'{}');
INSERT INTO public.pick_lists (pick_list_number, reference_number, source_document_type_id, assignee_to_id, select_customer_id,partner_id, warehouse_id, status_id, status_history, internal_notes, external_notes, attachment_files, start_date_time, end_date_time, total_items_to_pick, total_picked_items, price_list_id, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at,source_documents) VALUES ('PIC-001', 'REF1', (SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_SOURCE_DOCUMENT_TYPE' AND public.lookupcodes.lookup_code = 'SALES_ORDER'),1,1,1, 1,(SELECT public.lookupcodes.id FROM public.lookuptypes,public.lookupcodes WHERE public.lookuptypes.id = public.lookupcodes.lookup_type_id AND public.lookuptypes.lookup_type = 'PICK_LIST_STATUS' AND public.lookupcodes.lookup_code = 'COMPLETED'), '[{"status": "In Progress", "updated_at": "2022-06-21T19:02:54.344772587+05:30"}]', 'Internal Notes', 'External Notes', '{}', '2222-06-01 12:00:00+05:30', '2222-06-10 12:00:00+05:30', 100, 150, 2, 10, true, true, 1, '2022-06-21 19:02:54.350723+05:30', 1, '2022-06-21 19:02:54.350723+05:30', 0,null,'{}');
SELECT SETVAL( PG_GET_SERIAL_SEQUENCE('public.pick_lists', 'id'), (SELECT MAX(id) FROM public.pick_lists));

--
-- Pick List Lines Table Data
--

INSERT INTO public.pick_list_lines (pick_list_id, product_id, product_variant_id, sales_document_id, partner_id, quantity_ordered, quantity_to_pick, quantity_picked, remaining_quantity, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (1, 1, 1, '{}', 1, 250, 250, 150, 100, 1, true, true, 0, '2022-06-21 19:02:54.352918+05:30', 0, '2022-06-21 19:02:54.352918+05:30', 0, NULL);
INSERT INTO public.pick_list_lines (pick_list_id, product_id, product_variant_id, sales_document_id, partner_id, quantity_ordered, quantity_to_pick, quantity_picked, remaining_quantity, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (2, 1, 1, '{}', 1, 250, 250, 150, 100, 2, true, true, 0, '2022-06-21 19:02:54.373995+05:30', 0, '2022-06-21 19:02:54.373995+05:30', 0, NULL);
INSERT INTO public.pick_list_lines (pick_list_id, product_id, product_variant_id, sales_document_id, partner_id, quantity_ordered, quantity_to_pick, quantity_picked, remaining_quantity, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (3, 1, 1, '{}', 1, 250, 250, 150, 100, 3, true, true, 0, '2022-06-21 19:02:54.391355+05:30', 0, '2022-06-21 19:02:54.391355+05:30', 0, NULL);
INSERT INTO public.pick_list_lines (pick_list_id, product_id, product_variant_id, sales_document_id, partner_id, quantity_ordered, quantity_to_pick, quantity_picked, remaining_quantity, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (4, 1, 1, '{}', 1, 250, 250, 150, 100, 4, true, true, 0, '2022-06-21 19:02:54.407557+05:30', 0, '2022-06-21 19:02:54.407557+05:30', 0, NULL);
INSERT INTO public.pick_list_lines (pick_list_id, product_id, product_variant_id, sales_document_id, partner_id, quantity_ordered, quantity_to_pick, quantity_picked, remaining_quantity, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (5, 1, 1, '{}', 1, 250, 250, 150, 100, 5, true, true, 0, '2022-06-21 19:02:54.425335+05:30', 0, '2022-06-21 19:02:54.425335+05:30', 0, NULL);
INSERT INTO public.pick_list_lines (pick_list_id, product_id, product_variant_id, sales_document_id, partner_id, quantity_ordered, quantity_to_pick, quantity_picked, remaining_quantity, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (6, 1, 1, '{}', 1, 250, 250, 150, 100, 6, true, true, 0, '2022-06-21 19:02:54.441601+05:30', 0, '2022-06-21 19:02:54.441601+05:30', 0, NULL);
INSERT INTO public.pick_list_lines (pick_list_id, product_id, product_variant_id, sales_document_id, partner_id, quantity_ordered, quantity_to_pick, quantity_picked, remaining_quantity, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (7, 1, 1, '{}', 1, 250, 250, 150, 100, 7, true, true, 0, '2022-06-21 19:02:54.458625+05:30', 0, '2022-06-21 19:02:54.458625+05:30', 0, NULL);
INSERT INTO public.pick_list_lines (pick_list_id, product_id, product_variant_id, sales_document_id, partner_id, quantity_ordered, quantity_to_pick, quantity_picked, remaining_quantity, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (8, 1, 1, '{}', 1, 250, 250, 150, 100, 8, true, true, 0, '2022-06-21 19:02:54.475043+05:30', 0, '2022-06-21 19:02:54.475043+05:30', 0, NULL);
INSERT INTO public.pick_list_lines (pick_list_id, product_id, product_variant_id, sales_document_id, partner_id, quantity_ordered, quantity_to_pick, quantity_picked, remaining_quantity, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (9, 1, 1, '{}', 1, 250, 250, 150, 100, 9, true, true, 0, '2022-06-21 19:02:54.492429+05:30', 0, '2022-06-21 19:02:54.492429+05:30', 0, NULL);
INSERT INTO public.pick_list_lines (pick_list_id, product_id, product_variant_id, sales_document_id, partner_id, quantity_ordered, quantity_to_pick, quantity_picked, remaining_quantity, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (10, 1, 1, '{}', 1, 250, 250, 150, 100, 10, true, true, 0, '2022-06-21 19:02:54.509+05:30', 0, '2022-06-21 19:02:54.509+05:30', 0, NULL);
SELECT SETVAL( PG_GET_SERIAL_SEQUENCE('public.pick_list_lines', 'id'), (SELECT MAX(id) FROM public.pick_list_lines));



--
-- Cycle Count Table Data
--

INSERT INTO public.cycle_counts (cycle_count_number, warehouse_id, partner_id, status_id, status_history, items_count, count_method_id, schedule_date, threshold_limit, auto_schedule_cycle_count, frequency_id, create_inventory_adjustment, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES ('CYC0001', 1, 1, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_STATUS' AND lookupcodes.lookup_code = 'DRAFT'), '[{"status": "Draft", "updated_at": "2022-06-22T11:00:09.6588014+05:30"}]', 0, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_METHOD' AND lookupcodes.lookup_code = 'PRODUCTS'), '2022-06-20 12:00:00+05:30', 0, false, 123, false, 1, true, true, 0, '2022-06-22 11:00:09.659305+05:30', 0, '2022-06-22 11:00:09.659305+05:30', 0, NULL);
INSERT INTO public.cycle_counts (cycle_count_number, warehouse_id, partner_id, status_id, status_history, items_count, count_method_id, schedule_date, threshold_limit, auto_schedule_cycle_count, frequency_id, create_inventory_adjustment, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES ('CYC0002', 1, 1, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_STATUS' AND lookupcodes.lookup_code = 'DRAFT'), '[{"status": "Draft", "updated_at": "2022-06-22T11:00:14.3337042+05:30"}]', 0, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_METHOD' AND lookupcodes.lookup_code = 'PRODUCTS'), '2022-06-20 12:00:00+05:30', 0, false, 123, false, 2, true, true, 0, '2022-06-22 11:00:14.334912+05:30', 0, '2022-06-22 11:00:14.334912+05:30', 0, NULL);
INSERT INTO public.cycle_counts (cycle_count_number, warehouse_id, partner_id, status_id, status_history, items_count, count_method_id, schedule_date, threshold_limit, auto_schedule_cycle_count, frequency_id, create_inventory_adjustment, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES ('CYC0003', 1, 1, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_STATUS' AND lookupcodes.lookup_code = 'DRAFT'), '[{"status": "Draft", "updated_at": "2022-06-22T11:00:19.4908164+05:30"}]', 0, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_METHOD' AND lookupcodes.lookup_code = 'PRODUCTS'), '2022-06-20 12:00:00+05:30', 0, false, 123, false, 3, true, true, 0, '2022-06-22 11:00:19.490816+05:30', 0, '2022-06-22 11:00:19.490816+05:30', 0, NULL);
INSERT INTO public.cycle_counts (cycle_count_number, warehouse_id, partner_id, status_id, status_history, items_count, count_method_id, schedule_date, threshold_limit, auto_schedule_cycle_count, frequency_id, create_inventory_adjustment, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES ('CYC0004', 1, 1, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_STATUS' AND lookupcodes.lookup_code = 'DRAFT'), '[{"status": "Draft", "updated_at": "2022-06-22T11:00:23.173308+05:30"}]', 0, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_METHOD' AND lookupcodes.lookup_code = 'PRODUCTS'), '2022-06-20 12:00:00+05:30', 0, false, 123, false, 4, true, true, 0, '2022-06-22 11:00:23.174092+05:30', 0, '2022-06-22 11:00:23.174092+05:30', 0, NULL);
INSERT INTO public.cycle_counts (cycle_count_number, warehouse_id, partner_id, status_id, status_history, items_count, count_method_id, schedule_date, threshold_limit, auto_schedule_cycle_count, frequency_id, create_inventory_adjustment, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES ('CYC0005', 1, 1, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_STATUS' AND lookupcodes.lookup_code = 'DRAFT'), '[{"status": "Draft", "updated_at": "2022-06-22T11:00:26.2668881+05:30"}]', 0, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_METHOD' AND lookupcodes.lookup_code = 'PRODUCTS'), '2022-06-20 12:00:00+05:30', 0, false, 123, false, 5, true, true, 0, '2022-06-22 11:00:26.266888+05:30', 0, '2022-06-22 11:00:26.266888+05:30', 0, NULL);
INSERT INTO public.cycle_counts (cycle_count_number, warehouse_id, partner_id, status_id, status_history, items_count, count_method_id, schedule_date, threshold_limit, auto_schedule_cycle_count, frequency_id, create_inventory_adjustment, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES ('CYC0006', 1, 1, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_STATUS' AND lookupcodes.lookup_code = 'DRAFT'), '[{"status": "Draft", "updated_at": "2022-06-22T11:00:29.8732178+05:30"}]', 0, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_METHOD' AND lookupcodes.lookup_code = 'PRODUCTS'), '2022-06-20 12:00:00+05:30', 0, false, 123, false, 6, true, true, 0, '2022-06-22 11:00:29.873877+05:30', 0, '2022-06-22 11:00:29.873877+05:30', 0, NULL);
INSERT INTO public.cycle_counts (cycle_count_number, warehouse_id, partner_id, status_id, status_history, items_count, count_method_id, schedule_date, threshold_limit, auto_schedule_cycle_count, frequency_id, create_inventory_adjustment, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES ('CYC0007', 1, 1, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_STATUS' AND lookupcodes.lookup_code = 'DRAFT'), '[{"status": "Draft", "updated_at": "2022-06-22T11:00:33.1268772+05:30"}]', 0, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_METHOD' AND lookupcodes.lookup_code = 'PRODUCTS'), '2022-06-20 12:00:00+05:30', 0, false, 123, false, 7, true, true, 0, '2022-06-22 11:00:33.127395+05:30', 0, '2022-06-22 11:00:33.127395+05:30', 0, NULL);
INSERT INTO public.cycle_counts (cycle_count_number, warehouse_id, partner_id, status_id, status_history, items_count, count_method_id, schedule_date, threshold_limit, auto_schedule_cycle_count, frequency_id, create_inventory_adjustment, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES ('CYC0008', 1, 1, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_STATUS' AND lookupcodes.lookup_code = 'DRAFT'), '[{"status": "Draft", "updated_at": "2022-06-22T11:00:37.7937467+05:30"}]', 0, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_METHOD' AND lookupcodes.lookup_code = 'PRODUCTS'), '2022-06-20 12:00:00+05:30', 0, false, 123, false, 8, true, true, 0, '2022-06-22 11:00:37.793746+05:30', 0, '2022-06-22 11:00:37.793746+05:30', 0, NULL);
INSERT INTO public.cycle_counts (cycle_count_number, warehouse_id, partner_id, status_id, status_history, items_count, count_method_id, schedule_date, threshold_limit, auto_schedule_cycle_count, frequency_id, create_inventory_adjustment, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES ('CYC0009', 1, 1, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_STATUS' AND lookupcodes.lookup_code = 'DRAFT'), '[{"status": "Draft", "updated_at": "2022-06-22T11:00:40.7206275+05:30"}]', 0, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_METHOD' AND lookupcodes.lookup_code = 'PRODUCTS'), '2022-06-20 12:00:00+05:30', 0, false, 123, false, 9, true, true, 0, '2022-06-22 11:00:40.721156+05:30', 0, '2022-06-22 11:00:40.721156+05:30', 0, NULL);
INSERT INTO public.cycle_counts (cycle_count_number, warehouse_id, partner_id, status_id, status_history, items_count, count_method_id, schedule_date, threshold_limit, auto_schedule_cycle_count, frequency_id, create_inventory_adjustment, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES ('CYC00010', 1, 1, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_STATUS' AND lookupcodes.lookup_code = 'DRAFT'), '[{"status": "Draft", "updated_at": "2022-06-22T11:00:44.8253261+05:30"}]', 0, (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'CYCLE_COUNT_METHOD' AND lookupcodes.lookup_code = 'PRODUCTS'), '2022-06-20 12:00:00+05:30', 0, false, 123, false, 10, true, true, 0, '2022-06-22 11:00:44.825883+05:30', 0, '2022-06-22 11:00:44.825883+05:30', 0, NULL);
SELECT SETVAL( PG_GET_SERIAL_SEQUENCE('public.cycle_counts', 'id'), (SELECT MAX(id) FROM public.cycle_counts));

--
-- Cycle Count Lines Table Data
--

INSERT INTO public.cycle_count_lines (cycle_count_id, product_id, product_variant_id, bin_location_id, inventory_count, location_details, location_space_type_id, location_input_type_id, row_number, rack_number, shelf_number, bin_number, total_bin_count, recorded_quantity, current_count, discrepancy_count, discrepancy_level, cycle_count_discrepancy_reason, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (1, 1, 1, '[]', 111, '[{"location_id": 1, "warehouse_id": 1}]', (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_SPACE_TYPE' AND lookupcodes.lookup_code = 'ZONE'), (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_TYPE' AND lookupcodes.lookup_code = 'LOCAL_WAREHOUSE'), 234, 57, 12, 87, 179, 432, 422, 10, 0.05000000074505806, 'Products Added', 1, true, true, 0, '2022-06-22 11:00:09.663654+05:30', 0, '2022-06-22 11:00:09.663654+05:30', 0, NULL);
INSERT INTO public.cycle_count_lines (cycle_count_id, product_id, product_variant_id, bin_location_id, inventory_count, location_details, location_space_type_id, location_input_type_id, row_number, rack_number, shelf_number, bin_number, total_bin_count, recorded_quantity, current_count, discrepancy_count, discrepancy_level, cycle_count_discrepancy_reason, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (2, 1, 1, '[]', 111, '[{"location_id": 1, "warehouse_id": 1}]', (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_SPACE_TYPE' AND lookupcodes.lookup_code = 'ZONE'), (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_TYPE' AND lookupcodes.lookup_code = 'LOCAL_WAREHOUSE'), 234, 57, 12, 87, 179, 432, 422, 10, 0.05000000074505806, 'Products Added', 2, true, true, 0, '2022-06-22 11:00:14.335839+05:30', 0, '2022-06-22 11:00:14.335839+05:30', 0, NULL);
INSERT INTO public.cycle_count_lines (cycle_count_id, product_id, product_variant_id, bin_location_id, inventory_count, location_details, location_space_type_id, location_input_type_id, row_number, rack_number, shelf_number, bin_number, total_bin_count, recorded_quantity, current_count, discrepancy_count, discrepancy_level, cycle_count_discrepancy_reason, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (3, 1, 1, '[]', 111, '[{"location_id": 1, "warehouse_id": 1}]', (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_SPACE_TYPE' AND lookupcodes.lookup_code = 'ZONE'), (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_TYPE' AND lookupcodes.lookup_code = 'LOCAL_WAREHOUSE'), 234, 57, 12, 87, 179, 432, 422, 10, 0.05000000074505806, 'Products Added', 3, true, true, 0, '2022-06-22 11:00:19.491867+05:30', 0, '2022-06-22 11:00:19.491867+05:30', 0, NULL);
INSERT INTO public.cycle_count_lines (cycle_count_id, product_id, product_variant_id, bin_location_id, inventory_count, location_details, location_space_type_id, location_input_type_id, row_number, rack_number, shelf_number, bin_number, total_bin_count, recorded_quantity, current_count, discrepancy_count, discrepancy_level, cycle_count_discrepancy_reason, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (4, 1, 1, '[]', 111, '[{"location_id": 1, "warehouse_id": 1}]', (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_SPACE_TYPE' AND lookupcodes.lookup_code = 'ZONE'), (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_TYPE' AND lookupcodes.lookup_code = 'LOCAL_WAREHOUSE'), 234, 57, 12, 87, 179, 432, 422, 10, 0.05000000074505806, 'Products Added', 4, true, true, 0, '2022-06-22 11:00:23.175642+05:30', 0, '2022-06-22 11:00:23.175642+05:30', 0, NULL);
INSERT INTO public.cycle_count_lines (cycle_count_id, product_id, product_variant_id, bin_location_id, inventory_count, location_details, location_space_type_id, location_input_type_id, row_number, rack_number, shelf_number, bin_number, total_bin_count, recorded_quantity, current_count, discrepancy_count, discrepancy_level, cycle_count_discrepancy_reason, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (5, 1, 1, '[]', 111, '[{"location_id": 1, "warehouse_id": 1}]', (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_SPACE_TYPE' AND lookupcodes.lookup_code = 'ZONE'), (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_TYPE' AND lookupcodes.lookup_code = 'LOCAL_WAREHOUSE'), 234, 57, 12, 87, 179, 432, 422, 10, 0.05000000074505806, 'Products Added', 5, true, true, 0, '2022-06-22 11:00:26.267961+05:30', 0, '2022-06-22 11:00:26.267961+05:30', 0, NULL);
INSERT INTO public.cycle_count_lines (cycle_count_id, product_id, product_variant_id, bin_location_id, inventory_count, location_details, location_space_type_id, location_input_type_id, row_number, rack_number, shelf_number, bin_number, total_bin_count, recorded_quantity, current_count, discrepancy_count, discrepancy_level, cycle_count_discrepancy_reason, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (6, 1, 1, '[]', 111, '[{"location_id": 1, "warehouse_id": 1}]', (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_SPACE_TYPE' AND lookupcodes.lookup_code = 'ZONE'), (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_TYPE' AND lookupcodes.lookup_code = 'LOCAL_WAREHOUSE'), 234, 57, 12, 87, 179, 432, 422, 10, 0.05000000074505806, 'Products Added', 6, true, true, 0, '2022-06-22 11:00:29.875409+05:30', 0, '2022-06-22 11:00:29.875409+05:30', 0, NULL);
INSERT INTO public.cycle_count_lines (cycle_count_id, product_id, product_variant_id, bin_location_id, inventory_count, location_details, location_space_type_id, location_input_type_id, row_number, rack_number, shelf_number, bin_number, total_bin_count, recorded_quantity, current_count, discrepancy_count, discrepancy_level, cycle_count_discrepancy_reason, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (7, 1, 1, '[]', 111, '[{"location_id": 1, "warehouse_id": 1}]', (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_SPACE_TYPE' AND lookupcodes.lookup_code = 'ZONE'), (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_TYPE' AND lookupcodes.lookup_code = 'LOCAL_WAREHOUSE'), 234, 57, 12, 87, 179, 432, 422, 10, 0.05000000074505806, 'Products Added', 7, true, true, 0, '2022-06-22 11:00:33.127926+05:30', 0, '2022-06-22 11:00:33.127926+05:30', 0, NULL);
INSERT INTO public.cycle_count_lines (cycle_count_id, product_id, product_variant_id, bin_location_id, inventory_count, location_details, location_space_type_id, location_input_type_id, row_number, rack_number, shelf_number, bin_number, total_bin_count, recorded_quantity, current_count, discrepancy_count, discrepancy_level, cycle_count_discrepancy_reason, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (8, 1, 1, '[]', 111, '[{"location_id": 1, "warehouse_id": 1}]', (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_SPACE_TYPE' AND lookupcodes.lookup_code = 'ZONE'), (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_TYPE' AND lookupcodes.lookup_code = 'LOCAL_WAREHOUSE'), 234, 57, 12, 87, 179, 432, 422, 10, 0.05000000074505806, 'Products Added', 8, true, true, 0, '2022-06-22 11:00:37.794268+05:30', 0, '2022-06-22 11:00:37.794268+05:30', 0, NULL);
INSERT INTO public.cycle_count_lines (cycle_count_id, product_id, product_variant_id, bin_location_id, inventory_count, location_details, location_space_type_id, location_input_type_id, row_number, rack_number, shelf_number, bin_number, total_bin_count, recorded_quantity, current_count, discrepancy_count, discrepancy_level, cycle_count_discrepancy_reason, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (9, 1, 1, '[]', 111, '[{"location_id": 1, "warehouse_id": 1}]', (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_SPACE_TYPE' AND lookupcodes.lookup_code = 'ZONE'), (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_TYPE' AND lookupcodes.lookup_code = 'LOCAL_WAREHOUSE'), 234, 57, 12, 87, 179, 432, 422, 10, 0.05000000074505806, 'Products Added', 9, true, true, 0, '2022-06-22 11:00:40.721679+05:30', 0, '2022-06-22 11:00:40.721679+05:30', 0, NULL);
INSERT INTO public.cycle_count_lines (cycle_count_id, product_id, product_variant_id, bin_location_id, inventory_count, location_details, location_space_type_id, location_input_type_id, row_number, rack_number, shelf_number, bin_number, total_bin_count, recorded_quantity, current_count, discrepancy_count, discrepancy_level, cycle_count_discrepancy_reason, id, is_enabled, is_active, created_by, updated_date, updated_by, created_date, company_id, deleted_at) VALUES (10, 1, 1, '[]', 111, '[{"location_id": 1, "warehouse_id": 1}]', (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_SPACE_TYPE' AND lookupcodes.lookup_code = 'ZONE'), (SELECT lookupcodes.id FROM lookuptypes, lookupcodes WHERE lookuptypes.id = lookupcodes.lookup_type_id AND lookuptypes.lookup_type = 'LOCATION_TYPE' AND lookupcodes.lookup_code = 'LOCAL_WAREHOUSE'), 234, 57, 12, 87, 179, 432, 422, 10, 0.05000000074505806, 'Products Added', 10, true, true, 0, '2022-06-22 11:00:44.82641+05:30', 0, '2022-06-22 11:00:44.82641+05:30', 0, NULL);
SELECT SETVAL( PG_GET_SERIAL_SEQUENCE('public.cycle_count_lines', 'id'), (SELECT MAX(id) FROM public.cycle_count_lines));

SET session_replication_role = 'origin';

--
-- PostgreSQL database dump complete
--