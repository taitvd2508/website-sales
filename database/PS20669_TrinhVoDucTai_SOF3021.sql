Create Database PS20669_TrinhVoDucTai_SOF3021

USE PS20669_TrinhVoDucTai_SOF3021
select * from Accounts
Create Table Accounts
(
	Username nvarchar(20) PRIMARY KEY NOT NULL,
	Password nvarchar(20) NOT NULL,
	Fullname nvarchar(50) NOT NULL,
	Email nvarchar(50) NOT NULL,
	Photo nvarchar(255) NOT NULL,
	Activated bit NULL,
	Admin bit NULL,
);
INSERT INTO Accounts(Username, Password, Fullname, Email, Photo, Activated, Admin) VALUES
	-- Quản trị
	(N'TRINHTAI25', N'123456', N'Trịnh Võ Đức Tài', N'taitvdps20669@fpt.edu.vn', N'admin.png', 1, 1),
	(N'HONGQUYEN30', N'123456', N'Lê Hồng Quyên', N'quyentvdps20000@fpt.edu.vn', N'admin.png', 1, 1),
	(N'QUOCHUY19', N'123456', N'Trịnh Võ Quốc Huy', N'huytvdps12345@fpt.edu.vn', N'admin.png', 1, 1),
	(N'TRUNGNGUYEN20', N'123456', N'Lê Trung Nguyên', N'nguyentvdps34567@fpt.edu.vn', N'admin.png', 1, 1),
	(N'MINHTRI20', N'123456', N'Trịnh Võ Đức Tài', N'tritvdps19999@fpt.edu.vn', N'admin.png', 1, 1),
	(N'HOANGPHUC20', N'123456', N'Đinh Hoàng Phúc', N'phuctvdps19018@fpt.edu.vn', N'admin.png', 1, 1),
	(N'LAIBANG20', N'123456', N'SGP Lai Bâng', N'laibangps98089@fpt.edu.vn', N'admin.png', 1, 1),
	(N'XUANBACH20', N'123456', N'FL Xuân Bách', N'xuanbachps11980@fpt.edu.vn', N'admin.png', 1, 1),
	(N'ADC20', N'123456', N'FL ADC', N'adcps09876@fpt.edu.vn', N'admin.png', 1, 1),
	(N'MARIS20', N'123456', N'SGP MARIS', N'marisps12390@fpt.edu.vn', N'admin.png', 1, 1),
	(N'QUOCHUY20', N'123456', N'FL Quốc Huy', N'quochuyps26761@fpt.edu.vn', N'admin.png', 1, 1),
	(N'DUCTAI20', N'123456', N'FL Đức Tài', N'ductaips78791@fpt.edu.vn', N'admin.png', 1, 1),
	(N'HUULAM20', N'123456', N'FL Hữu Lâm', N'huulamps13141@fpt.edu.vn', N'admin.png', 1, 1),
	(N'DIRUNG20', N'123456', N'FL Đi Rừng', N'dirungps14642@fpt.edu.vn', N'admin.png', 1, 1),
	(N'NGUYENMAP20', N'123456', N'FL Nguyên Mập', N'nguyenmapps23568@fpt.edu.vn', N'admin.png', 1, 1),
	(N'THACHDAU20', N'123456', N'TDT Thách Đấu', N'thachdaups12467@fpt.edu.vn', N'admin.png', 1, 1),
	(N'HOANGTD20', N'123456', N'TDT HoangTD', N'hoangtdps77812@fpt.edu.vn', N'admin.png', 1, 1),
	(N'ONGBACH20', N'123456', N'TDT Ông Bạch', N'ongbachps12377@fpt.edu.vn', N'admin.png', 1, 1),
	(N'MARIN20', N'123456', N'TDT Marin', N'marinps09123@fpt.edu.vn', N'admin.png', 1, 1),
	(N'CATIA20', N'123456', N'TDT Catia', N'catiaps19090@fpt.edu.vn', N'admin.png', 1, 1),
	-- User
	(N'USER01', N'123456', N'Đinh Hoàng User', N'userps01111@fpt.edu.vn', N'user.png', 1, 0),
	(N'USER02', N'123456', N'SGP User', N'userps02222@fpt.edu.vn', N'user.png', 1, 0),
	(N'USER03', N'123456', N'Trịnh Võ User', N'userps03333@fpt.edu.vn', N'user.png', 1, 0),
	(N'USER04', N'123456', N'Nguyễn Hoàng User', N'userps04444@fpt.edu.vn', N'user.png', 1, 0),
	(N'USER05', N'123456', N'Nguyễn Hữu User', N'userps05555@fpt.edu.vn', N'user.png', 1, 0);

Create Table Categories
(
	CategoryId char(5) PRIMARY KEY NOT NULL,
	Name nvarchar(50) NOT NULL,
);
INSERT INTO Categories(CategoryId, Name) VALUES
	('00001', N'Quần Nam'),
	('00002', N'Quần Nữ'),
	('00003', N'Áo Nam'),
	('00004', N'Áo Nữ'),
	('00005', N'Đồng Hồ'),
	('00006', N'Nón Thời Trang'),
	('00007', N'Túi Xách'),
	('00008', N'Giày Dép');
Create Table Products
(
	ProductId int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Name nvarchar(50) NOT NULL,
	Image nvarchar(255) NOT NULL,
	Price float NOT NULL,
	Quantity int NOT NULL,
	CreateDate date NOT NULL,
	Available bit NOT NULL,
	CategoryId char(5) NOT NULL,
);
INSERT INTO Products(Name, Image, Price, Quantity, CreateDate, Available, CategoryId) VALUES
	-- Quần nam - 00001
	(N'Quần shorts chạy bộ Ultra Fast & Free Run', N'1.png', 280000, 10, '2021-11-15', 1, '00001'),
	(N'Quần Jeans Clean Denim dáng Regular S2', N'2.png', 360000, 10, '2021-11-16', 1, '00001'),
	(N'Quần Jogger nam túi hộp Cargo Outdoor', N'3.png', 330000, 10, '2021-11-17', 1, '00001'),
	(N'Quần dài Kaki Excool co giãn', N'4.png', 499999, 10, '2021-11-15', 1, '00001'),
	(N'Quần short nam thể thao 5 New Ultra', N'5.png', 99000, 10, '2021-11-16', 1, '00001'),
	-- Quần nữ - 00002
	(N'Quần short nữ giả váy xinh xắn', N'6.png', 255000, 10, '2021-10-20', 1, '00002'),
	(N'Quần tây công sở nữ ĐAN CHÂU', N'7.png', 280000, 10, '2021-10-21', 1, '00002'),
	(N'Quần short jean thêu hoa sành điệu', N'8.png', 140000, 10, '2021-10-20', 1, '00002'),
	(N'Quần jeans nữ phối kéo ALE', N'9.png', 539000, 10, '2021-10-21', 1, '00002'),
	(N'Quần CULOTTES Can De Blanc', N'10.png', 1290000, 10, '2021-10-20', 1, '00002'),
	-- Áo nam - 00003
	(N'Áo sơ mi dài tay Aristino ALS17403', N'11.png', 895000, 5, '2021-09-13', 1, '00003'),
	(N'Áo polo nam cổ ngắn tay Aristino APS046S3', N'12.png', 595000, 5, '2021-09-13', 1, '00003'),
	(N'Áo thun ngắn tay Aristino ATS010S3', N'13.png', 395000, 5, '2021-09-13', 1, '00003'),
	(N'Áo blazer nam Aristino ABZ00502', N'14.png', 2900000, 5, '2021-08-15', 1, '00003'),
	(N'Áo khoác 2 lớp Aristino AJK028W2', N'15.png', 1950000, 5, '2021-08-15', 1, '00003'),
	-- Áo nữ - 00004
	(N'Áo khoác dù nữ form rộng cá tính', N'16.png', 159000, 6, '2021-07-13', 1, '00004'),
	(N'Áo sơ mi nữ form rộng', N'17.png', 159000, 7, '2021-07-13', 1, '00004'),
	(N'Áo trung niên nữ đính đá', N'18.png', 295000, 7, '2021-07-13', 1, '00004'),
	(N'Áo cúp ngực Corset Can De Blanc', N'19.png', 360000, 5, '2021-08-25', 1, '00004'),
	(N'Áo kiểu nữ bẹt vai tay loe thời trang', N'20.png', 199000, 5, '2021-08-25', 1, '00004'),
	-- Đồng hồ - 00005
	(N'CASIO AE-1200WHD-1AVDF', N'21.png', 1300000, 5, '2021-05-13', 1, '00005'),
	(N'DANIEL WELLINGTON DW00100007 – 0107DW', N'22.png', 5900000, 2, '2021-07-13', 1, '00005'),
	(N'ORIENT RA-AA0B02R19B', N'23.png', 7800000, 2, '2021-05-13', 1, '00005'),
	(N'CASIO A168WG-9WDF', N'24.png', 1678000, 5, '2021-05-25', 1, '00005'),
	(N'G-Shock DW-5900JT-6', N'25.png', 2980000, 3, '2021-05-25', 1, '00005'),
	-- Nón Thời Trang - 00006
	(N'Mũ MLB New York Yankees Glam Adjustable Black', N'26.png', 910000, 5, '2022-02-19', 1, '00006'),
	(N'Mũ Nam Adidas Men Golf Fitted Hat', N'27.png', 750000, 5, '2022-02-19', 1, '00006'),
	(N'Mũ Gucci Caleido Baseball Cap', N'28.png', 8700000, 2, '2022-02-11', 1, '00006'),
	(N'Mũ Nam Dior Black With Logo Embroidered', N'29.png', 12900000, 2, '2022-02-11', 1, '00006'),
	(N'Mũ Len Adidas Adicolor Cuff Beanie', N'30.png', 700000, 5, '2022-02-11', 1, '00006'),
	-- Túi Xách - 00007
	(N'Túi Xách Nhỏ Hai Màu Phối Khoá Jn', N'31.png', 759000, 5, '2022-03-19', 1, '00007'),
	(N'Túi Đeo Chéo Nắp Gập Chần Bông', N'32.png', 925000, 5, '2022-03-19', 1, '00007'),
	(N'Túi Đeo Chéo Phối Khóa Mắc Xích', N'33.png', 1225000, 4, '2022-01-11', 1, '00007'),
	(N'Túi Đeo Chéo Siêu Nhẹ KINGBAG TORINO', N'34.png', 298000, 5, '2022-05-05', 1, '00007'),
	(N'Túi Đeo Chéo Cao Cấp Brand USA - TOMTOC', N'35.png', 1133000, 5, '2022-05-05', 1, '00007'),
	-- Giày Dép - 00008
	(N'NIKE AIR FORCE 1 - AF1', N'36.png', 3300000, 5, '2022-04-25', 1, '00008'),
	(N'YEEZY BOOST 350 V2 YEEZREEL', N'37.png', 8500000, 3, '2022-04-26', 1, '00008'),
	(N'ULTRABOOST 20 CLOUD WHITE', N'38.png', 3200000, 5, '2022-04-28', 1, '00008'),
	(N'NIKE DOWNSHIFTER 12', N'39.png', 2200000, 6, '2022-05-11', 1, '00008'), -- Nữ
	(N'ADIDAS NMD R1 REFINED', N'40.png', 2800000, 5, '2022-07-11', 1, '00008'), -- Nữ
	(N'ADIDAS ULTRABOOST 20 CLOUD WHITE', N'41.png', 3200000, 6, '2022-04-09', 1, '00008'), -- Nữ
	(N'NIKE AIR FORCE 1 SHADOW', N'42.png', 3900000, 5, '2022-04-10', 1, '00008'), -- Nữ
	(N'GUCCI LOGO CTR SNKR', N'43.png', 13000000, 2, '2022-04-30', 1, '00008'),
	(N'NIKE AIR JORDAN 1 LOW STRAWBERRY ICE CREAM', N'44.png', 9500000, 3, '2022-05-12', 1, '00008'), -- Nữ
	(N'NIKE DUNK LOW BLACK PAISLEY', N'45.png', 7200000, 4, '2022-07-20', 1, '00008');

Create Table Orders
(
	OrderId bigint IDENTITY(1,1) PRIMARY KEY NOT NULL,
	CreateDate datetime NOT NULL,
	PhoneNumber nvarchar(20) NOT NULL,
	Address nvarchar(255) NOT NULL,
	Username nvarchar(20) NOT NULL,
);
INSERT INTO Orders(CreateDate, PhoneNumber, Address, Username) VALUES
	-- U05
	('2022-09-15T00:00:00.000', N'0348720610', N'70/7 Lê Văn Thọ, Gò Vấp', N'USER05'),
	('2022-09-16T00:00:00.000', N'0348720610', N'70/7 Lê Văn Thọ, Gò Vấp', N'USER05'),
	('2022-09-17T00:00:00.000', N'0348720610', N'70/7 Lê Văn Thọ, Gò Vấp', N'USER05'),
	-- U04
	('2022-10-09T00:00:00.000', N'0348720610', N'175/1A Tô Ký, Quận 12', N'USER04'),
	('2022-10-10T00:00:00.000', N'0348720610', N'175/1A Tô Ký, Quận 12', N'USER04'),
	('2022-10-11T00:00:00.000', N'0348720610', N'175/1A Tô Ký, Quận 12', N'USER04'),
	-- U03
	('2022-10-20T00:00:00.000', N'0348720610', N'99 Kha Vạn Cân, Thủ Đức', N'USER03'),
	('2022-10-21T00:00:00.000', N'0348720610', N'99 Kha Vạn Cân, Thủ Đức', N'USER03'),
	('2022-10-22T00:00:00.000', N'0348720610', N'99 Kha Vạn Cân, Thủ Đức', N'USER03'),
	-- U02
	('2022-11-22T00:00:00.000', N'0348720610', N'544 Lê Duẩn, Quận 1', N'USER02'),
	('2022-11-22T00:00:00.000', N'0348720610', N'544 Lê Duẩn, Quận 1', N'USER02'),
	('2022-11-22T00:00:00.000', N'0348720610', N'544 Phạm Ngũ Lão, Quận 1', N'USER02'),
	-- U01
	('2023-01-01T00:00:00.000', N'0348720610', N'473 Lê Quang Định, Bình Thạnh', N'USER01'),
	('2023-01-02T00:00:00.000', N'0348720610', N'264 Lê Quang Định, Bình Thạnh', N'USER01'),
	('2023-01-03T00:00:00.000', N'0348720610', N'473 Lê Quang Định, Bình Thạnh', N'USER01');

Create Table OrderDetails
(
	OderDetailId bigint IDENTITY(1,1) PRIMARY KEY NOT NULL,
	OrderId bigint NOT NULL,
	ProductId int NOT NULL,
	Price float NOT NULL,
	Quantity int NOT NULL,
);
INSERT INTO OrderDetails(OrderId, ProductId, Price, Quantity) VALUES
	(1, 8, 140000, 2),
	(1, 5, 99000, 1),
	(2, 3, 330000, 1),
	(2, 27, 750000, 1),
	(3, 40, 2800000, 1),
	(4, 31, 759000, 1),
	(5, 19, 360000, 1),
	(6, 15, 1950000, 1),
	(7, 25, 2980000, 1),
	(8, 20, 199000, 1),
	(8, 18, 295000, 1),
	(9, 9, 539000, 2),
	(10, 2, 360000, 3),
	(10, 12, 595000, 1),
	(10, 15, 1950000, 1),
	(11, 23, 7800000, 1), 
	(12, 27, 750000, 1),
	(13, 45, 7200000, 1),
	(14, 32, 925000, 1),
	(15, 30, 700000, 1),
	(15, 36, 3300000, 1);


-- LIÊN KẾT KHÓA NGOẠI
alter table OrderDetails with check add constraint FK_OrderDetails_Orders foreign key(OrderId) references Orders(OrderId) on DELETE CASCADE on UPDATE CASCADE;
alter table OrderDetails with check add constraint FK_OrderDetails_Products foreign key(ProductId) references Products(ProductId) on UPDATE CASCADE;
alter table Orders with check add constraint FK_Orders_Accounts foreign key(Username) references Accounts(Username) on DELETE CASCADE on UPDATE CASCADE;
alter table Products with check add constraint FK_Products_Categories foreign key(CategoryId) references Categories(CategoryId) on DELETE CASCADE;



