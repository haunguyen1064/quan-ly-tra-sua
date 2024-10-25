INSERT INTO `table` (`id`, `name`, `status`)
VALUES (NULL, 'Bàn 1', 'free'),
       (NULL, 'Bàn 2', 'free'),
       (NULL, 'Bàn 3', 'free');


INSERT INTO `customer` (`id`, `phoneNumber`, `name`, `address`, `birthday`)
VALUES (1, '0909175581', 'Nguyễn Ngọc Trung', 'TP HCM', '2024-04-09 17:00:00'),
(2, '0909175555', 'Huỳnh Thị Tường Vi	', NULL, NULL);


INSERT INTO `employee` (`id`, `username`, `password`, `name`, `phoneNumber`, `startDate`, `permissionName`, `permissionId`)
VALUES (NULL, 'admin', 'admin', 'Admin', NULL, '2024-09-24 00:00:00','Quản lý', 'manager'),
       (NULL, 'nhanvien', '12345', 'Nhân Viên 1', '0909175581', '2024-09-24 12:15:08','Nhân viên', 'staff');


INSERT INTO `food_category` (`id`, `name`, `slug`)
VALUES (NULL, 'Đồ Ăn', 'do-an'),
       (NULL, 'Trà Sữa', 'tra-sua'),
       (NULL, 'Cà Phê', 'ca-phe'),
       (NULL, 'Topping', 'topping');




INSERT INTO `food_item` (`id`, `name`, `description`, `urlImage`, `unitName`, `unitPrice`, `idCategory`) VALUES
(1, 'Trà Sữa Truyền Thống', NULL, NULL, 'Ly', 30000, 2),
(2, 'Trà Sữa Thái Xanh', NULL, NULL, 'Ly', 35000, 2),
(3, 'Trà Sữa Thái Đỏ', NULL, NULL, 'Ly', 35000, 2),
(4, 'Trà Sữa Hokkaido', NULL, NULL, 'Ly', 40000, 2),
(5, 'Trà Sữa Okinawa', NULL, NULL, 'Ly', 40000, 2),
(6, 'Trà Sữa Matcha', NULL, NULL, 'Ly', 45000, 2),
(7, 'Trà Sữa Socola', NULL, NULL, 'Ly', 35000, 2),

INSERT INTO `food_item` (`id`, `name`, `description`, `urlImage`, `unitName`, `unitPrice`, `idCategory`) VALUES
(24, 'Bánh Tráng Trộn', NULL, NULL, 'Túi', 15000, 1),
(25, 'Phá Lấu', NULL, NULL, 'Chén', 30000, 1),
(26, 'Bánh Mì Nướng Muối Ớt', NULL, NULL, 'Cái', 20000, 1),
(27, 'Bắp Xào', NULL, NULL, 'Phần', 20000, 1),
(8, 'Khoai Lang Lắc', NULL, NULL, 'Phần', 25000, 1),
(9, 'Trứng Cút Chiên', NULL, NULL, 'Phần', 15000, 1),
(10, 'Bánh Tiêu', NULL, NULL, 'Cái', 5000, 1),
(11, 'Gỏi Cuốn', NULL, NULL, 'Cuốn', 10000, 1),
(12, 'Chuối Nếp Nướng', NULL, NULL, 'Cái', 15000, 1),
(13, 'Bò Bía', NULL, NULL, 'Cuốn', 10000, 1),
(14, 'Bánh Flan', NULL, NULL, 'Chén', 12000, 1);

INSERT INTO food_item (id, name, description, urlImage, unitName, unitPrice, idCategory) VALUES
(33, 'Cà Phê Sữa Đá', NULL, NULL, 'Ly', 25000, 3),
(34, 'Cà Phê Trứng', NULL, NULL, 'Ly', 40000, 3),
(35, 'Cà Phê Phin', NULL, NULL, 'Ly', 20000, 3),
(36, 'Cà Phê Dừa', NULL, NULL, 'Ly', 30000, 3),
(37, 'Cà Phê Đen', NULL, NULL, 'Ly', 22000, 3),
(38, 'Cà Phê Nóng', NULL, NULL, 'Ly', 20000, 3),
(39, 'Cà Phê Sữa Nóng', NULL, NULL, 'Ly', 25000, 3),
(31, 'Cà Phê Hạt', NULL, NULL, 'Ly', 35000, 3),
(32, 'Cà Phê Latte', NULL, NULL, 'Ly', 45000, 3);

INSERT INTO food_item (id, name, description, urlImage, unitName, unitPrice, idCategory) VALUES
(41, 'Trân Châu Đen', NULL, NULL, 'Gram', 5000, 4),
(42, 'Trân Châu Trắng', NULL, NULL, 'Gram', 5000, 4),
(43, 'Pudding', NULL, NULL, 'Gram', 7000, 4),
(44, 'Thạch Rau Câu', NULL, NULL, 'Gram', 6000, 4),
(45, 'Kem', NULL, NULL, 'Gram', 10000, 4),
(46, 'Siro Ngọt', NULL, NULL, 'Gram', 3000, 4),
(47, 'Sữa Đặc', NULL, NULL, 'Gram', 2000, 4),
(49, 'Bột Matcha', NULL, NULL, 'Gram', 12000, 4),
(50, 'Quả Mứt', NULL, NULL, 'Gram', 9000, 4);




INSERT INTO `order` (`idEmployee`, `idTable`, `type`, `orderDate`, `status`, `payDate`, `paidAmount`, `totalAmount`) VALUES
(1, 1, 'local', '2024-09-24 14:28:41', 'unpaid', NULL, 0, 0),
(1, 1, 'online', '2024-09-24 15:05:08', 'unpaid', '2024-09-24 00:00:00', 0, 0);


INSERT INTO `order_item` (`idOrder`, `idFoodItem`, `idTopping`, `quantity`, `foodPrice`, `toppingPrice`, `note`) VALUES
(1, 7, 1, 3, 0, 0, NULL),
(1, 8, 1, 2, 0, 0, NULL),
(1, 14, 2, 2, 0, 0, NULL),
(2, 9, 1, 2, 0, 0, NULL);


INSERT INTO `shipment` (`idOrder`, `idCustomer`, `shipperName`, `shipperPhoneNumber`, `status`, `notice`, `startDate`, `endDate`)
VALUES
(2, 1, 'Nguyễn Văn B', '09421321323', 'toreceive', NULL, '2024-09-24 00:00:00', NULL);
