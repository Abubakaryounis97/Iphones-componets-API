-- iPhones
INSERT INTO iphones (model, release_year, price) VALUES 
('iPhone 12', 2020, 799.00),
('iPhone 13', 2021, 899.00);

-- Components
INSERT INTO components (iphone_id, name, type, specs) VALUES
(1, 'A14 Bionic', 'CPU', '6-core, 5nm'),
(1, 'Super Retina XDR', 'Display', '6.1 inch OLED'),
(1, '2815 mAh', 'Battery', 'Li-Ion'),
(2, 'A15 Bionic', 'CPU', '6-core, 5nm'),
(2, 'Super Retina XDR', 'Display', '6.1 inch OLED'),
(2, '3095 mAh', 'Battery', 'Li-Ion');