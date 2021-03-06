/********************************************************************************
Copyright (C) Binod Nepal, Mix Open Foundation (http://mixof.org).

This file is part of MixERP.

MixERP is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

MixERP is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with MixERP.  If not, see <http://www.gnu.org/licenses/>.
***********************************************************************************/

INSERT INTO core.brands(brand_code, brand_name)
SELECT 'APP', 'Apple'       UNION ALL
SELECT 'MS', 'Microsoft'    UNION ALL
SELECT 'IBM', 'IBM'         UNION ALL
SELECT 'ACR', 'Acer'        UNION ALL
SELECT 'SNG', 'Samsung'     UNION ALL
SELECT 'ITX', 'Index';

INSERT INTO core.item_groups(item_group_code, item_group_name, sales_tax_id, parent_item_group_id, sales_account_id, sales_discount_account_id, sales_return_account_id, purchase_account_id, purchase_discount_account_id, inventory_account_id, cost_of_goods_sold_account_id)
SELECT 'ELE', 'Electronics & Computers',                1, NULL,												core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'TVV', 'TV & Video',                             1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'HAT', 'Home Audio & Theater',                   1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'CPV', 'Camera, Photo & Video',                  1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'CPA', 'Cell Phones & Accessories',              1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'VGM', 'Video Games',                            1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'PAA', 'Portable Audio & Accessories',           1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'CEG', 'Car Electronics & GPS',                  1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'MUI', 'Musical Instruments',                    1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'ELA', 'Electronics Accessories',                1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'WRT', 'Wearable Technology',                    1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'LPT', 'Laptops & Tablets',                      1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'DEM', 'Desktops & Monitors',                    1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'CAP', 'Computer Accessories & Peripherals',     1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'CPC', 'Computer Parts & Components',            1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'SFT', 'Software',                               1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'PRI', 'Printers & Ink',                         1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200')	UNION ALL
SELECT 'OSS', 'Office & School Supplies',               1, core.get_item_group_id_by_item_group_code('ELE'),	core.get_account_id_by_account_number('30100'), core.get_account_id_by_account_number('40270'), core.get_account_id_by_account_number('20701'), core.get_account_id_by_account_number('40100'), core.get_account_id_by_account_number('30700'), core.get_account_id_by_account_number('10700'), core.get_account_id_by_account_number('40200');


INSERT INTO core.items(item_code, item_name, item_group_id, item_type_id, brand_id, preferred_supplier_id, unit_id, hot_item, sales_tax_id, reorder_level, maintain_stock, cost_price, selling_price, reorder_unit_id, reorder_quantity)
SELECT 'RMBP',  'Macbook Pro 15'''' Retina',            core.get_item_group_id_by_item_group_code('LPT'),	1, core.get_brand_id_by_brand_code('APP'),       1,  1, false,   1,  100,    true,    180000,    225000, 1, 200  UNION ALL
SELECT '13MBA', 'Macbook Air 13''''',                   core.get_item_group_id_by_item_group_code('LPT'),	1, core.get_brand_id_by_brand_code('APP'),       5,  1, false,   1,  100,    true,    130000,    155000, 1, 200  UNION ALL
SELECT '11MBA', 'Macbook Air 11''''',                   core.get_item_group_id_by_item_group_code('LPT'),	1, core.get_brand_id_by_brand_code('APP'),       6,  1, false,   1,  100,    true,    110000,    135000, 1, 200  UNION ALL
SELECT 'IPA',   'iPad Air',                             core.get_item_group_id_by_item_group_code('LPT'),	1, core.get_brand_id_by_brand_code('APP'),       54, 1, false,   1,  50,     true,    53000,     70000,  1, 100  UNION ALL
SELECT 'IPR',   'iPad Air Retina',                      core.get_item_group_id_by_item_group_code('LPT'),	1, core.get_brand_id_by_brand_code('APP'),       74, 1, false,   1,  100,    true,    63000,     80000,  1, 200  UNION ALL
SELECT 'IPM',   'iPad Mini',                            core.get_item_group_id_by_item_group_code('LPT'),	1, core.get_brand_id_by_brand_code('APP'),       76, 1, false,   1,  100,    true,    33000,     50000,  1, 200  UNION ALL
SELECT 'IPMR',  'iPad Mini Retina',                     core.get_item_group_id_by_item_group_code('LPT'),	1, core.get_brand_id_by_brand_code('APP'),       78, 1, false,   1,  100,    true,    53000,     70000,  1, 200  UNION ALL
SELECT 'IPH6',  'iPhone 6',                             core.get_item_group_id_by_item_group_code('CPA'),	1, core.get_brand_id_by_brand_code('APP'),       78, 1, false,   1,  100,    true,    93000,     105000, 1, 200  UNION ALL
SELECT 'IPH6P', 'iPhone 6 Plus',                        core.get_item_group_id_by_item_group_code('CPA'),	1, core.get_brand_id_by_brand_code('APP'),       5,  1, false,   1,  100,    true,    103000,    115000, 1, 200  UNION ALL
SELECT 'ITP',   'IBM Thinkpadd II Laptop',              core.get_item_group_id_by_item_group_code('LPT'),	1, core.get_brand_id_by_brand_code('IBM'),       5,  1, false,   1,  50,     true,    80000,     125000, 1, 100  UNION ALL
SELECT 'AIT',   'Acer Iconia Tab',                      core.get_item_group_id_by_item_group_code('LPT'),	1, core.get_brand_id_by_brand_code('ACR'),       6,  1, true,    1,  10,     true,    40000,     65000,  1, 20   UNION ALL
SELECT 'IXM',   'Intex Mouse',                          core.get_item_group_id_by_item_group_code('CAP'),	1, core.get_brand_id_by_brand_code('ITX'),       74, 1, false,   1,  1000,   true,    200,       350,    8, 200  UNION ALL
SELECT 'MSO',   'Microsoft Office Premium Edition',     core.get_item_group_id_by_item_group_code('SFT'),	1, core.get_brand_id_by_brand_code('MS'),        78, 1, true,    1,  100,    true,    30000,     35000,  1, 200  UNION ALL
SELECT 'MNP',   'MixNP Classifieds',                    core.get_item_group_id_by_item_group_code('SFT'),	1, 1,                                            78, 1, true,    1,  0,      false,   150000,    150000, 1, 0    UNION ALL
SELECT 'MIX',   'MixERP Community Edition',             core.get_item_group_id_by_item_group_code('SFT'),	1, 1,                                            76, 1, true,    1,  0,      false,   40000,     40000,  1, 0    UNION ALL
SELECT 'SFIX',  'SFIX Financial Edition',               core.get_item_group_id_by_item_group_code('SFT'),	1, 1,                                            1,  1, true,    1,  0,      false,   40000,     40000,  1, 0    UNION ALL
SELECT 'SGT',   'Samsung Galaxy Tab 10.1',              core.get_item_group_id_by_item_group_code('LPT'),	1, core.get_brand_id_by_brand_code('SNG'),       6,  1, false,   1,  10,     true,    30000,     45000,  1, 20;

INSERT INTO office.stores(office_id, store_code, store_name, address, store_type_id, allow_sales, sales_tax_id)
SELECT 2, 'STORE-1', 'Store 1',     'Office', 2, true,  1     UNION ALL
SELECT 2, 'GODOW-1', 'Godown 1',    'Office', 1, false, 1     UNION ALL
SELECT 3, 'STORE-2', 'Store 2',     'Office', 2, true,  3     UNION ALL
SELECT 3, 'GODOW-2', 'Godown 2',    'Office', 1, false, 3     UNION ALL
SELECT 4, 'STORE-3', 'Store 3',     'Office', 2, true,  5     UNION ALL
SELECT 4, 'GODOW-3', 'Godown 3',    'Office', 1, false, 5;


INSERT INTO office.cash_repositories(office_id, cash_repository_code, cash_repository_name, description)
SELECT 2, 'DRW1',   'Drawer 1',     'Drawer'    UNION ALL
SELECT 2, 'VLT',    'Vault',        'Vault'     UNION ALL
SELECT 3, 'DRW2',   'Drawer 2',     'Drawer'    UNION ALL
SELECT 3, 'VLT2',   'Vault 2',      'Vault';

INSERT INTO core.shippers(company_name, account_id)
SELECT 'Default', core.get_account_id_by_account_number('20110');