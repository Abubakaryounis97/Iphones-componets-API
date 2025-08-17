-- iPhones
INSERT INTO iphones (model, release_year) VALUES 
('iPhone 3G', 2008),
('iPhone 3GS', 2009),
('iPhone 4', 2010),
('iPhone 4S', 2011),
('iPhone 5', 2012),
('iPhone 5C', 2013),
('iPhone 5S', 2013),
('iPhone 6', 2014),
('iPhone 6 Plus', 2014),
('iPhone 6S', 2015),
('iPhone 6S Plus', 2015),
('iPhone SE (1st Gen)', 2016),
('iPhone 7', 2016),
('iPhone 7 Plus', 2016),
('iPhone 8', 2017),
('iPhone 8 Plus', 2017),
('iPhone X', 2017),
('iPhone XR', 2018),
('iPhone XS', 2018),
('iPhone XS Max', 2018),
('iPhone 11', 2019),
('iPhone 11 Pro', 2019),
('iPhone 11 Pro Max', 2019),
('iPhone SE (2nd Gen)', 2020),
('iPhone 12', 2020),
('iPhone 12 Mini', 2020),
('iPhone 12 Pro', 2020),
('iPhone 12 Pro Max', 2020),
('iPhone 13', 2021),
('iPhone 13 Mini', 2021),
('iPhone 13 Pro', 2021),
('iPhone 13 Pro Max', 2021),
('iPhone 14', 2022),
('iPhone 14 Plus', 2022),
('iPhone 14 Pro', 2022),
('iPhone 14 Pro Max', 2022),
('iPhone 15', 2023),
('iPhone 15 Plus', 2023),
('iPhone 15 Pro', 2023),
('iPhone 15 Pro Max', 2023),
('iPhone 16', 2024);

-- Components
INSERT INTO components (iphone_id, name, type, specs) VALUES
-- iPhone 3G
(1, 'Samsung 32-bit CPU', 'CPU', '412 MHz ARM11'),
(1, '3.5 inch LCD', 'Display', '480x320 px'),
(1, '1150 mAh', 'Battery', 'Li-Ion'),
(1, '30-pin Dock', 'Charging Port', 'Proprietary'),

-- iPhone 3GS
(2, 'Samsung 32-bit CPU', 'CPU', '600 MHz Cortex-A8'),
(2, '3.5 inch LCD', 'Display', '480x320 px'),
(2, '1219 mAh', 'Battery', 'Li-Ion'),
(2, '30-pin Dock', 'Charging Port', 'Proprietary'),

-- iPhone 4
(3, 'Apple A4', 'CPU', '1 GHz'),
(3, '3.5 inch Retina LCD', 'Display', '960x640 px'),
(3, '1420 mAh', 'Battery', 'Li-Ion'),
(3, '30-pin Dock', 'Charging Port', 'Proprietary'),

-- iPhone 4S
(4, 'Apple A5', 'CPU', '1 GHz Dual-core'),
(4, '3.5 inch Retina LCD', 'Display', '960x640 px'),
(4, '1430 mAh', 'Battery', 'Li-Ion'),
(4, '30-pin Dock', 'Charging Port', 'Proprietary'),

-- iPhone 5
(5, 'Apple A6', 'CPU', '1.3 GHz Dual-core'),
(5, '4.0 inch Retina LCD', 'Display', '1136x640 px'),
(5, '1440 mAh', 'Battery', 'Li-Ion'),
(5, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 5C
(6, 'Apple A6', 'CPU', '1.3 GHz Dual-core'),
(6, '4.0 inch Retina LCD', 'Display', '1136x640 px'),
(6, '1510 mAh', 'Battery', 'Li-Ion'),
(6, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 5S
(7, 'Apple A7', 'CPU', '1.3 GHz 64-bit Dual-core'),
(7, '4.0 inch Retina LCD', 'Display', '1136x640 px'),
(7, '1560 mAh', 'Battery', 'Li-Ion'),
(7, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 6
(8, 'Apple A8', 'CPU', '1.4 GHz Dual-core'),
(8, '4.7 inch Retina HD', 'Display', '1334x750 px'),
(8, '1810 mAh', 'Battery', 'Li-Ion'),
(8, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 6 Plus
(9, 'Apple A8', 'CPU', '1.4 GHz Dual-core'),
(9, '5.5 inch Retina HD', 'Display', '1920x1080 px'),
(9, '2915 mAh', 'Battery', 'Li-Ion'),
(9, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 6S
(10, 'Apple A9', 'CPU', '1.85 GHz Dual-core'),
(10, '4.7 inch Retina HD', 'Display', '1334x750 px'),
(10, '1715 mAh', 'Battery', 'Li-Ion'),
(10, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 6S Plus
(11, 'Apple A9', 'CPU', '1.85 GHz Dual-core'),
(11, '5.5 inch Retina HD', 'Display', '1920x1080 px'),
(11, '2750 mAh', 'Battery', 'Li-Ion'),
(11, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone SE (1st Gen)
(12, 'Apple A9', 'CPU', '1.85 GHz Dual-core'),
(12, '4.0 inch Retina LCD', 'Display', '1136x640 px'),
(12, '1624 mAh', 'Battery', 'Li-Ion'),
(12, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 7
(13, 'Apple A10 Fusion', 'CPU', '2.34 GHz Quad-core'),
(13, '4.7 inch Retina HD', 'Display', '1334x750 px'),
(13, '1960 mAh', 'Battery', 'Li-Ion'),
(13, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 7 Plus
(14, 'Apple A10 Fusion', 'CPU', '2.34 GHz Quad-core'),
(14, '5.5 inch Retina HD', 'Display', '1920x1080 px'),
(14, '2900 mAh', 'Battery', 'Li-Ion'),
(14, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 8
(15, 'Apple A11 Bionic', 'CPU', '2.39 GHz Hexa-core'),
(15, '4.7 inch Retina HD', 'Display', '1334x750 px'),
(15, '1821 mAh', 'Battery', 'Li-Ion'),
(15, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 8 Plus
(16, 'Apple A11 Bionic', 'CPU', '2.39 GHz Hexa-core'),
(16, '5.5 inch Retina HD', 'Display', '1920x1080 px'),
(16, '2675 mAh', 'Battery', 'Li-Ion'),
(16, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone X
(17, 'Apple A11 Bionic', 'CPU', '2.39 GHz Hexa-core'),
(17, '5.8 inch Super Retina OLED', 'Display', '2436x1125 px'),
(17, '2716 mAh', 'Battery', 'Li-Ion'),
(17, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone XR
(18, 'Apple A12 Bionic', 'CPU', '2.5 GHz Hexa-core'),
(18, '6.1 inch Liquid Retina LCD', 'Display', '1792x828 px'),
(18, '2942 mAh', 'Battery', 'Li-Ion'),
(18, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone XS
(19, 'Apple A12 Bionic', 'CPU', '2.5 GHz Hexa-core'),
(19, '5.8 inch Super Retina OLED', 'Display', '2436x1125 px'),
(19, '2658 mAh', 'Battery', 'Li-Ion'),
(19, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone XS Max
(20, 'Apple A12 Bionic', 'CPU', '2.5 GHz Hexa-core'),
(20, '6.5 inch Super Retina OLED', 'Display', '2688x1242 px'),
(20, '3174 mAh', 'Battery', 'Li-Ion'),
(20, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 11
(21, 'Apple A13 Bionic', 'CPU', '2.66 GHz Hexa-core'),
(21, '6.1 inch Liquid Retina LCD', 'Display', '1792x828 px'),
(21, '3110 mAh', 'Battery', 'Li-Ion'),
(21, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 11 Pro
(22, 'Apple A13 Bionic', 'CPU', '2.66 GHz Hexa-core'),
(22, '5.8 inch Super Retina XDR OLED', 'Display', '2436x1125 px'),
(22, '3046 mAh', 'Battery', 'Li-Ion'),
(22, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 11 Pro Max
(23, 'Apple A13 Bionic', 'CPU', '2.66 GHz Hexa-core'),
(23, '6.5 inch Super Retina XDR OLED', 'Display', '2688x1242 px'),
(23, '3969 mAh', 'Battery', 'Li-Ion'),
(23, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone SE (2nd Gen)
(24, 'Apple A13 Bionic', 'CPU', '2.66 GHz Hexa-core'),
(24, '4.7 inch Retina HD', 'Display', '1334x750 px'),
(24, '1821 mAh', 'Battery', 'Li-Ion'),
(24, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 12
(25, 'Apple A14 Bionic', 'CPU', '3.1 GHz Hexa-core'),
(25, '6.1 inch Super Retina XDR OLED', 'Display', '2532x1170 px'),
(25, '2815 mAh', 'Battery', 'Li-Ion'),
(25, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 12 Mini
(26, 'Apple A14 Bionic', 'CPU', '3.1 GHz Hexa-core'),
(26, '5.4 inch Super Retina XDR OLED', 'Display', '2340x1080 px'),
(26, '2227 mAh', 'Battery', 'Li-Ion'),
(26, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 12 Pro
(27, 'Apple A14 Bionic', 'CPU', '3.1 GHz Hexa-core'),
(27, '6.1 inch Super Retina XDR OLED', 'Display', '2532x1170 px'),
(27, '2815 mAh', 'Battery', 'Li-Ion'),
(27, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 12 Pro Max
(28, 'Apple A14 Bionic', 'CPU', '3.1 GHz Hexa-core'),
(28, '6.7 inch Super Retina XDR OLED', 'Display', '2778x1284 px'),
(28, '3687 mAh', 'Battery', 'Li-Ion'),
(28, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 13
(29, 'Apple A15 Bionic', 'CPU', '3.2 GHz Hexa-core'),
(29, '6.1 inch Super Retina XDR OLED', 'Display', '2532x1170 px'),
(29, '3095 mAh', 'Battery', 'Li-Ion'),
(29, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 13 Mini
(30, 'Apple A15 Bionic', 'CPU', '3.2 GHz Hexa-core'),
(30, '5.4 inch Super Retina XDR OLED', 'Display', '2340x1080 px'),
(30, '2438 mAh', 'Battery', 'Li-Ion'),
(30, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 13 Pro
(31, 'Apple A15 Bionic', 'CPU', '3.2 GHz Hexa-core'),
(31, '6.1 inch Super Retina XDR OLED', 'Display', '2532x1170 px'),
(31, '3095 mAh', 'Battery', 'Li-Ion'),
(31, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 13 Pro Max
(32, 'Apple A15 Bionic', 'CPU', '3.2 GHz Hexa-core'),
(32, '6.7 inch Super Retina XDR OLED', 'Display', '2778x1284 px'),
(32, '4352 mAh', 'Battery', 'Li-Ion'),
(32, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 14
(33, 'Apple A15 Bionic', 'CPU', '3.2 GHz Hexa-core'),
(33, '6.1 inch Super Retina XDR OLED', 'Display', '2532x1170 px'),
(33, '3279 mAh', 'Battery', 'Li-Ion'),
(33, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 14 Plus
(34, 'Apple A15 Bionic', 'CPU', '3.2 GHz Hexa-core'),
(34, '6.7 inch Super Retina XDR OLED', 'Display', '2778x1284 px'),
(34, '4323 mAh', 'Battery', 'Li-Ion'),
(34, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 14 Pro
(35, 'Apple A16 Bionic', 'CPU', '3.46 GHz Hexa-core'),
(35, '6.1 inch Super Retina XDR OLED', 'Display', '2556x1179 px'),
(35, '3200 mAh', 'Battery', 'Li-Ion'),
(35, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 14 Pro Max
(36, 'Apple A16 Bionic', 'CPU', '3.46 GHz Hexa-core'),
(36, '6.7 inch Super Retina XDR OLED', 'Display', '2796x1290 px'),
(36, '4323 mAh', 'Battery', 'Li-Ion'),
(36, 'Lightning', 'Charging Port', 'Proprietary'),

-- iPhone 15
(37, 'Apple A16 Bionic', 'CPU', '3.46 GHz Hexa-core'),
(37, '6.1 inch Super Retina XDR OLED', 'Display', '2556x1179 px'),
(37, '3322 mAh', 'Battery', 'Li-Ion'),
(37, 'USB-C', 'Charging Port', 'Proprietary'),

-- iPhone 15 Plus
(38, 'Apple A16 Bionic', 'CPU', '3.46 GHz Hexa-core'),
(38, '6.7 inch Super Retina XDR OLED', 'Display', '2796x1290 px'),
(38, '4300 mAh', 'Battery', 'Li-Ion'),
(38, 'USB-C', 'Charging Port', 'Proprietary'),

-- iPhone 15 Pro
(39, 'Apple A17 Bionic', 'CPU', '3.46 GHz Hexa-core'),
(39, '6.1 inch Super Retina XDR OLED', 'Display', '2556x1179 px'),
(39, '3300 mAh', 'Battery', 'Li-Ion'),
(39, 'USB-C', 'Charging Port', 'Proprietary'),

-- iPhone 15 Pro Max
(40, 'Apple A17 Bionic', 'CPU', '3.46 GHz Hexa-core'),
(40, '6.7 inch Super Retina XDR OLED', 'Display', '2796x1290 px'),
(40, '4452 mAh', 'Battery', 'Li-Ion'),
(40, 'USB-C', 'Charging Port', 'Proprietary'),

-- iPhone 16
(41, 'Apple A18 Bionic', 'CPU', '3.6 GHz Hexa-core'),
(41, '6.2 inch Super Retina XDR OLED', 'Display', '2556x1180 px'),
(41, '3350 mAh', 'Battery', 'Li-Ion'),
(41, 'USB-C', 'Charging Port', 'Proprietary');
