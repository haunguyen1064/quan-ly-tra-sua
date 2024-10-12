INSERT INTO `table` (`id`, `name`, `status`)
VALUES (NULL, 'Bàn 1', 'free'),
       (NULL, 'Bàn 2', 'free'),
       (NULL, 'Bàn 3', 'free');


INSERT INTO `customer` (`id`, `phoneNumber`, `name`, `address`, `birthday`)
VALUES (1, '0909175581', 'Nguyễn Ngọc Trung', 'TP HCM', '2024-04-09 17:00:00'),
(2, '0909175555', 'Huỳnh Thị Tường Vi	', NULL, NULL);


INSERT INTO `employee` (`id`, `username`, `password`, `name`, `phoneNumber`, `startDate`, `permissionName`, `permissionId`)
VALUES (NULL, 'admin', 'admin', 'Admin', NULL, '2024-09-24 00:00:00','Quản lý', 1),
       (NULL, 'nhanvien', '12345', 'Nhân Viên 1', '0909175581', '2024-09-24 12:15:08','Nhân viên', 2);


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
(8, 'Trà Đào Cam Sả', NULL, NULL, 'Ly', 40000, 1),
(9, 'Trà Chanh Leo', NULL, NULL, 'Ly', 35000, 1),
(10, 'Trà Xoài', NULL, NULL, 'Ly', 35000, 1),
(11, 'Trà Vải', NULL, NULL, 'Ly', 35000, 1),
(12, 'Trà Dâu', NULL, NULL, 'Ly', 35000, 1),
(13, 'Trà Tắc Xí Muội', NULL, NULL, 'Ly', 30000, 1),
(14, 'Trà Tắc', NULL, NULL, 'Ly', 25000, 1),
(15, 'Trà Sữa Trân Châu Đường Đen', NULL, NULL, 'Ly', 45000, 2),
(16, 'Trà Sữa Khoai Môn', NULL, NULL, 'Ly', 40000, 2);



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
