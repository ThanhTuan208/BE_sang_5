-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2024 lúc 05:26 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `youngteam`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `feature` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `description`, `feature`, `created_at`) VALUES
(1, 'iPhone 13', 1, 1, 999, 'iphone13.jpg', 'iPhone 13 với bộ nhớ 128GB, màn hình 6.1 inch, camera kép 12MP, chip A15 Bionic', 1, '2024-10-28 01:41:11'),
(2, 'MacBook Pro', 1, 2, 1299, 'macbookpro.jpg', 'MacBook Pro 13 inch, RAM 16GB, SSD 512GB, chip M1, màn hình Retina', 1, '2024-10-28 01:41:11'),
(3, 'HomePod', 1, 3, 299, 'homepod.jpg', 'Apple HomePod hỗ trợ Siri, âm thanh 360 độ, kết nối Wi-Fi và Bluetooth', 0, '2024-10-28 01:41:11'),
(4, 'iPad Pro', 1, 4, 799, 'ipadpro.jpg', 'iPad Pro 11 inch, 128GB, chip M1, hỗ trợ bút Apple Pencil và Magic Keyboard', 1, '2024-10-28 01:41:11'),
(5, 'Apple Watch Series 7', 1, 5, 399, 'applewatch7.jpg', 'Apple Watch Series 7, màn hình 45mm, chống nước 50m, hỗ trợ đo nồng độ oxy trong máu', 0, '2024-10-28 01:41:11'),
(6, 'Galaxy S21', 2, 1, 799, 'galaxys21.jpg', 'Galaxy S21 với bộ nhớ 128GB, màn hình 6.2 inch, camera chính 64MP, chip Exynos 2100', 1, '2024-10-28 01:41:11'),
(7, 'Galaxy Book', 2, 2, 1099, 'galaxybook.jpg', 'Galaxy Book 15 inch, RAM 16GB, SSD 512GB, chip Intel Core i7, pin 20 tiếng', 0, '2024-10-28 01:41:11'),
(8, 'Samsung Soundbar', 2, 3, 199, 'samsungsoundbar.jpg', 'Loa Samsung Soundbar, công suất 200W, kết nối Bluetooth, hỗ trợ Dolby Atmos', 1, '2024-10-28 01:41:11'),
(9, 'Galaxy Tab S7', 2, 4, 649, 'galaxytabs7.jpg', 'Galaxy Tab S7 11 inch, bộ nhớ 128GB, bút S Pen, pin 8000mAh', 0, '2024-10-28 01:41:11'),
(11, 'Oppo Find X3', 3, 1, 699, 'oppofindx3.jpg', 'Oppo Find X3, 256GB, camera 50MP, màn hình AMOLED 6.7 inch', 1, '2024-10-28 01:41:11'),
(12, 'Oppo Laptop', 3, 2, 999, 'oppolaptop.jpg', 'Laptop Oppo, RAM 8GB, SSD 256GB, màn hình 14 inch, pin 10 tiếng', 0, '2024-10-28 01:41:11'),
(13, 'Oppo Speaker', 3, 3, 129, 'oppospeaker.jpg', 'Loa Oppo, công suất 150W, hỗ trợ Bluetooth 5.0, pin 12 tiếng', 1, '2024-10-28 01:41:11'),
(14, 'Oppo Pad', 3, 4, 499, 'oppopad.jpg', 'Oppo Pad 10.5 inch, bộ nhớ 64GB, pin 7500mAh, hỗ trợ sạc nhanh', 1, '2024-10-28 01:41:11'),
(15, 'Oppo Watch Free', 3, 5, 199, 'oppowatchfree.jpg', 'Oppo Watch Free, màn hình AMOLED 1.64 inch, theo dõi giấc ngủ và nhịp tim', 0, '2024-10-28 01:41:11'),
(16, 'Mi 11', 4, 1, 599, 'mi11.jpg', 'Xiaomi Mi 11, bộ nhớ 128GB, camera 108MP, chip Snapdragon 888', 1, '2024-10-28 01:41:11'),
(17, 'Redmi Laptop', 4, 2, 899, 'redmilaptop.jpg', 'Redmi Laptop 15.6 inch, RAM 16GB, SSD 512GB, chip AMD Ryzen 5', 0, '2024-10-28 01:41:11'),
(18, 'Mi Soundbar', 4, 3, 149, 'misoundbar.jpg', 'Mi Soundbar, công suất 120W, kết nối Bluetooth 5.0, hỗ trợ âm thanh vòm', 1, '2024-10-28 01:41:11'),
(19, 'Mi Pad 5', 4, 4, 349, 'mipad5.jpg', 'Mi Pad 5, màn hình 11 inch, 120Hz, bộ nhớ 128GB, pin 8720mAh', 1, '2024-10-28 01:41:11'),
(20, 'Mi Watch', 4, 5, 179, 'miwatch.jpg', 'Mi Watch, màn hình AMOLED 1.39 inch, GPS tích hợp, pin 16 ngày', 0, '2024-10-28 01:41:11'),
(21, 'Xperia 5 II', 5, 1, 799, 'xperia5ii.jpg', 'Sony Xperia 5 II, 128GB, camera 12MP, màn hình OLED 6.1 inch', 1, '2024-10-28 01:41:11'),
(22, 'Sony Vaio', 5, 2, 1199, 'sonyvaio.jpg', 'Sony Vaio, RAM 16GB, SSD 1TB, chip Intel Core i7, màn hình 14 inch', 0, '2024-10-28 01:41:11'),
(23, 'Sony XB33', 5, 3, 199, 'sonyxb33.jpg', 'Sony XB33, loa di động, chống nước IP67, pin 24 tiếng', 1, '2024-10-28 01:41:11'),
(24, 'Sony Tablet', 5, 4, 499, 'sonytab.jpg', 'Sony Tablet, màn hình 10 inch, bộ nhớ 64GB, hỗ trợ bút cảm ứng', 1, '2024-10-28 01:41:11'),
(25, 'Sony Smartwatch', 5, 5, 249, 'sonysmartwatch.jpg', 'Sony Smartwatch, đo nhịp tim, GPS, chống nước 5ATM', 0, '2024-10-28 01:41:11'),
(26, 'iPhone SE', 1, 1, 699, 'iphonese.jpg', 'iPhone SE (2024), 128GB, chip A15, camera 12MP', 1, '2024-10-28 01:41:11'),
(27, 'MacBook Air', 1, 2, 999, 'macbookair.jpg', 'MacBook Air, màn hình 13.3 inch, chip M1, RAM 8GB, SSD 256GB', 0, '2024-10-28 01:41:11'),
(28, 'AirPods', 1, 3, 199, 'airpods.jpg', 'AirPods thế hệ 3, chống ồn chủ động, thời lượng pin 30 giờ', 1, '2024-10-28 01:41:11'),
(29, 'iPad Air', 1, 4, 599, 'ipadair.jpg', 'iPad Air 10.9 inch, bộ nhớ 256GB, hỗ trợ Apple Pencil 2', 1, '2024-10-28 01:41:11'),
(30, 'Apple Watch SE', 1, 5, 299, 'applewatchse.jpg', 'Apple Watch SE, màn hình 44mm, theo dõi giấc ngủ và nhịp tim', 0, '2024-10-28 01:41:11'),
(31, 'Galaxy Note 20', 2, 1, 999, 'galaxynote20.jpg', 'Galaxy Note 20, 256GB, bút S Pen, màn hình 6.7 inch', 1, '2024-10-28 01:41:11'),
(32, 'Galaxy Chromebook', 2, 2, 899, 'galaxychromebook.jpg', 'Galaxy Chromebook, màn hình 13.3 inch, chip Intel Core i5, RAM 8GB', 0, '2024-10-28 01:41:11'),
(33, 'Samsung Buds', 2, 3, 149, 'samsungbuds.jpg', 'Tai nghe Samsung Buds, chống ồn chủ động, kết nối Bluetooth 5.0', 1, '2024-10-28 01:41:11'),
(34, 'Galaxy Tab A7', 2, 4, 399, 'galaxytaba7.jpg', 'Galaxy Tab A7, màn hình 10.4 inch, pin 7040mAh, bộ nhớ 64GB', 0, '2024-10-28 01:41:11'),
(35, 'Galaxy Fit 2', 2, 5, 99, 'galaxyfit2.jpg', 'Galaxy Fit 2, màn hình AMOLED, theo dõi sức khỏe và giấc ngủ', 1, '2024-10-28 01:41:11'),
(36, 'Oppo Reno 5', 3, 1, 499, 'opporeno5.jpg', 'Oppo Reno 5, 128GB, camera 64MP, pin 4300mAh, sạc nhanh 50W', 1, '2024-10-28 01:41:11'),
(37, 'Oppo Chromebook', 3, 2, 799, 'oppochromebook.jpg', 'Oppo Chromebook, màn hình 14 inch, chip Intel Celeron, pin 12 tiếng', 0, '2024-10-28 01:41:11'),
(38, 'Oppo Earbuds', 3, 3, 99, 'oppoearbuds.jpg', 'Tai nghe Oppo Earbuds, kết nối Bluetooth, pin 24 giờ', 1, '2024-10-28 01:41:11'),
(39, 'Oppo Tablet', 3, 4, 349, 'oppotablet.jpg', 'Oppo Tablet 10 inch, 128GB, hỗ trợ bút cảm ứng, pin 7100mAh', 1, '2024-10-28 01:41:11'),
(40, 'Oppo Band', 3, 5, 59, 'oppoband.jpg', 'Oppo Band, theo dõi sức khỏe 24/7, chống nước 5ATM', 0, '2024-10-28 01:41:11'),
(41, 'Redmi Note 10', 4, 1, 299, 'redminote10.jpg', 'Redmi Note 10, màn hình AMOLED 6.43 inch, camera 48MP, pin 5000mAh', 1, '2024-10-28 01:41:11'),
(42, 'Mi Notebook', 4, 2, 699, 'minotebook.jpg', 'Mi Notebook 14 inch, RAM 8GB, SSD 256GB, chip Intel Core i5', 0, '2024-10-28 01:41:11'),
(43, 'Mi Earbuds', 4, 3, 59, 'miearbuds.jpg', 'Tai nghe Mi Earbuds, chống ồn, kết nối Bluetooth 5.0', 1, '2024-10-28 01:41:11'),
(44, 'Mi Tablet', 4, 4, 399, 'mitablet.jpg', 'Mi Tablet 10.4 inch, bộ nhớ 64GB, pin 6000mAh, hỗ trợ sạc nhanh', 1, '2024-10-28 01:41:11'),
(45, 'Xiaomi Band', 4, 5, 49, 'xiaomiband.jpg', 'Xiaomi Band 6, màn hình AMOLED, đo nồng độ oxy trong máu (SpO2)', 0, '2024-10-28 01:41:11'),
(46, 'Sony Xperia 1 III', 5, 1, 1099, 'xperia1iii.jpg', 'Sony Xperia 1 III, 256GB, camera 12MP, màn hình 4K HDR OLED', 1, '2024-10-28 01:41:11'),
(47, 'Sony Laptop', 5, 2, 999, 'sonylaptop.jpg', 'Laptop Sony, màn hình 15 inch, RAM 16GB, SSD 512GB, pin 12 tiếng', 0, '2024-10-28 01:41:11'),
(48, 'Sony Earbuds', 5, 3, 149, 'sonyearbuds.jpg', 'Tai nghe Sony Earbuds, chống ồn chủ động, kết nối Bluetooth 5.2, pin 24 giờ', 1, '2024-10-28 01:41:11'),
(49, 'Sony Xperia Tablet', 5, 4, 599, 'xperiatablet.jpg', 'Sony Xperia Tablet, màn hình 10.5 inch, bộ nhớ 128GB, pin 8000mAh', 0, '2024-10-28 01:41:11'),
(50, 'Sony Smartband', 5, 5, 99, 'sonysmartband.jpg', 'Sony Smartband, theo dõi bước chân và nhịp tim, chống nước IP68', 1, '2024-10-28 01:41:11');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- cau 3
-- 3.1
SELECT ID, name, price, image, description FROM products;
-- 3.2
SELECT * FROM products WHERE ID = 10;
-- 3.3
SELECT * FROM products WHERE type_id = 1;
-- 3.4
SELECT *
FROM manufactures
WHERE  manu_name like 'Apple';
-- 3.5
SELECT *
FROM products
JOIN manufactures ON products.manu_id = manufactures.manu_id 
JOIN protypes ON products.type_id = protypes.type_id
order by id desc
limit 10
-- 3.6
SELECT *
FROM products
JOIN manufactures ON products.manu_id = manufactures.manu_id 
JOIN protypes ON products.type_id = protypes.type_id
order by id desc
limit 10 OFFSET 10
-- 3.7
select * 
from products 
JOIN manufactures ON products.manu_id = manufactures.manu_id 
JOIN protypes ON products.type_id = protypes.type_id
WHERE products.description LIKE '%128GB%'
-- 3.8
DELETE FROM products
WHERE id = 10
-- 3.9
INSERT INTO `products`(`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `description`, `feature`, `created_at`) 
VALUES (51, 'PlayStation 5', 5, 2, 499, 'ps5.jpg', N'Máy chơi game Sony PlayStation 5, CPU AMD Ryzen, SSD 825GB, hỗ trợ 4K UHD, tốc độ 120fps', 1, '2024-10-28 08:41:11');
-- 3.10
UPDATE products
SET products.price = 899.000
WHERE id = 11