-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2021 at 12:08 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duanmau2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `bill_name` varchar(255) NOT NULL,
  `bill_address` varchar(255) NOT NULL,
  `bill_tel` varchar(50) NOT NULL,
  `bill_email` varchar(100) NOT NULL,
  `bill_pttt` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1.thanh toán trực tiếp 2.chuyển khoản 3.thanh toán online',
  `ngaydathang` varchar(50) DEFAULT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `bill_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0.Đơn hàng mới 1.Đang xử lý 2.Đang giao hàng 3.Đã giao hàng',
  `receive_name` varchar(255) DEFAULT NULL,
  `receive_address` varchar(255) DEFAULT NULL,
  `receive_tel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `iduser`, `bill_name`, `bill_address`, `bill_tel`, `bill_email`, `bill_pttt`, `ngaydathang`, `total`, `bill_status`, `receive_name`, `receive_address`, `receive_tel`) VALUES
(1, 0, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 1, '07:05:10pm 10/10/2021', 1566, 0, NULL, NULL, NULL),
(2, 0, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 1, '07:22:50pm 10/10/2021', 1000, 1, NULL, NULL, NULL),
(3, 0, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 1, '07:32:09pm 10/10/2021', 2200, 0, NULL, NULL, NULL),
(4, 0, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 1, '07:47:57pm 10/10/2021', 733, 1, NULL, NULL, NULL),
(9, 0, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 1, '07:57:00pm 10/10/2021', 4932, 0, NULL, NULL, NULL),
(11, 0, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 3, '07:58:37pm 10/10/2021', 1000, 2, NULL, NULL, NULL),
(14, 1, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 2, '10:54:29am 11/10/2021', 600, 0, NULL, NULL, NULL),
(21, 1, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 1, '11:05:08am 11/10/2021', 100, 0, NULL, NULL, NULL),
(23, 4, 'Phan Ngọc Truyền', 'Bình Định', '0346646057', 'phantruyen19722@gmail.com', 1, '11:13:20am 11/10/2021', 500, 0, NULL, NULL, NULL),
(29, 1, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 1, '05:59:29pm 11/10/2021', 2466, 0, NULL, NULL, NULL),
(31, 1, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 2, '07:55:45pm 11/10/2021', 1100, 0, NULL, NULL, NULL),
(32, 1, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 2, '08:06:34pm 11/10/2021', 400, 0, NULL, NULL, NULL),
(34, 5, 'phantruyen', '', '', 'phant19722@gmail.com', 2, '08:09:14pm 11/10/2021', 1000, 0, NULL, NULL, NULL),
(37, 1, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 1, '11:57:52am 12/10/2021', 500, 0, NULL, NULL, NULL),
(39, 1, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 2, '05:55:21pm 12/10/2021', 1000, 0, NULL, NULL, NULL),
(41, 1, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 2, '07:22:11pm 13/10/2021', 1000, 0, NULL, NULL, NULL),
(44, 1, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 2, '02:55:08pm 16/10/2021', 1000, 2, NULL, NULL, NULL),
(45, 1, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 2, '02:56:37pm 18/10/2021', 1200, 0, NULL, NULL, NULL),
(46, 1, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 2, '09:30:28am 19/10/2021', 1400, 0, NULL, NULL, NULL),
(47, 1, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 1, '09:41:00am 19/10/2021', 2600, 2, NULL, NULL, NULL),
(48, 1, 'truyen', 'Binh Dinh', '0346646057', 'phantruyen19722@gmail.com', 2, '11:33:17am 19/10/2021', 1400, 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `idpro` int(10) NOT NULL,
  `ngaybinhluan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `user`, `idpro`, `ngaybinhluan`) VALUES
(1, 'GOODDDD', 'truyen', 26, '08:32:35pm 09/10/2021'),
(2, 'hay quá', 'truyen', 26, '08:46:28pm 09/10/2021'),
(5, 'GOOODD', 'Phan Ngọc Truyền', 28, '11:01:28am 11/10/2021'),
(6, 'sản phẩm tốt', 'Phan Ngọc Truyền', 28, '11:02:05am 11/10/2021'),
(10, 'GOODDDD', 'truyen', 32, '11:33:16am 16/10/2021'),
(11, 'hay quá', 'truyen', 30, '11:33:28am 16/10/2021'),
(13, 'sản phẩm tốt', '', 32, '02:43:01pm 16/10/2021'),
(14, 'sản phẩm tốt', 'phantruyen', 29, '05:54:04pm 17/10/2021'),
(15, 'GOODDDD', 'phantruyen', 29, '05:54:08pm 17/10/2021'),
(16, 'hay quá', 'phantruyen', 29, '05:54:12pm 17/10/2021'),
(17, 'GOODDDD', 'phantruyen', 33, '05:54:22pm 17/10/2021'),
(18, 'sản phẩm tốt', 'phantruyen', 33, '05:54:25pm 17/10/2021'),
(23, 'jhgjghj', 'truyen', 38, '11:32:34am 19/10/2021');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idpro` int(10) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(10) NOT NULL,
  `idbill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `iduser`, `idpro`, `img`, `name`, `price`, `soluong`, `thanhtien`, `idbill`) VALUES
(1, 1, 26, 'vans-3.jpg', 'Vanz V', 733, 1, 733, 5),
(2, 1, 22, 'Jordan-2.jpg', 'Navy Like Auth', 1000, 1, 1000, 5),
(3, 1, 26, 'vans-3.jpg', 'Vanz V', 733, 1, 733, 6),
(4, 1, 22, 'Jordan-2.jpg', 'Navy Like Auth', 1000, 1, 1000, 6),
(5, 1, 22, 'Jordan-2.jpg', 'Navy Like Auth', 1000, 1, 1000, 6),
(6, 1, 26, 'vans-3.jpg', 'Vanz V', 733, 1, 733, 7),
(7, 1, 22, 'Jordan-2.jpg', 'Navy Like Auth', 1000, 1, 1000, 7),
(8, 1, 22, 'Jordan-2.jpg', 'Navy Like Auth', 1000, 1, 1000, 7),
(9, 1, 26, 'vans-3.jpg', 'Vanz V', 733, 1, 733, 7),
(10, 1, 26, 'vans-3.jpg', 'Vanz V', 733, 1, 733, 8),
(11, 1, 22, 'Jordan-2.jpg', 'Navy Like Auth', 1000, 1, 1000, 8),
(12, 1, 22, 'Jordan-2.jpg', 'Navy Like Auth', 1000, 1, 1000, 8),
(13, 1, 26, 'vans-3.jpg', 'Vanz V', 733, 1, 733, 8),
(14, 1, 26, 'vans-3.jpg', 'Vanz V', 733, 1, 733, 8),
(15, 1, 26, 'vans-3.jpg', 'Vanz V', 733, 1, 733, 9),
(16, 1, 22, 'Jordan-2.jpg', 'Navy Like Auth', 1000, 1, 1000, 9),
(17, 1, 22, 'Jordan-2.jpg', 'Navy Like Auth', 1000, 1, 1000, 9),
(18, 1, 26, 'vans-3.jpg', 'Vanz V', 733, 1, 733, 9),
(19, 1, 26, 'vans-3.jpg', 'Vanz V', 733, 1, 733, 9),
(20, 1, 26, 'vans-3.jpg', 'Vanz V', 733, 1, 733, 9),
(21, 1, 18, 'NIKE-AIR-FORCE-1.jpeg', 'LV8 GS', 1000, 1, 1000, 10),
(22, 1, 22, 'Jordan-2.jpg', 'Navy Like Auth', 1000, 1, 1000, 11),
(23, 1, 21, 'Jordan-1.jpg', 'Volt Gold', 1100, 1, 1100, 12),
(24, 1, 24, 'vans-1.jpg', 'Black White', 100, 1, 100, 12),
(25, 1, 23, 'Jordan-3.jpg', 'Travis Scott x Fragment', 2000, 1, 2000, 13),
(26, 1, 29, 'mlb-2.jpg', 'Chunky P Boston Red', 600, 1, 600, 14),
(27, 1, 29, 'mlb-2.jpg', 'Chunky P Boston Red', 600, 1, 600, 15),
(28, 1, 29, 'mlb-2.jpg', 'Chunky P Boston Red', 600, 1, 600, 16),
(29, 1, 29, 'mlb-2.jpg', 'Chunky P Boston Red', 600, 1, 600, 16),
(30, 1, 24, 'vans-1.jpg', 'Black White', 100, 1, 100, 17),
(31, 1, 24, 'vans-1.jpg', 'Black White', 100, 1, 100, 18),
(32, 4, 22, 'Jordan-2.jpg', 'Navy Like Auth', 1000, 1, 1000, 19),
(33, 1, 24, 'vans-1.jpg', 'Black White', 100, 1, 100, 20),
(34, 1, 24, 'vans-1.jpg', 'Black White', 100, 1, 100, 21),
(35, 1, 25, 'vans-2.jpg', 'Checkerboard', 200, 1, 200, 22),
(36, 4, 27, 'MLB-3.png', 'Bigball Chunky', 500, 1, 500, 23),
(37, 0, 21, 'Jordan-1.jpg', 'Volt Gold', 1100, 1, 1100, 24),
(38, 0, 21, 'Jordan-1.jpg', 'Volt Gold', 1100, 1, 1100, 25),
(39, 0, 21, 'Jordan-1.jpg', 'Volt Gold', 1100, 1, 1100, 26),
(40, 0, 25, 'vans-2.jpg', 'Checkerboard', 200, 1, 200, 26),
(41, 0, 27, 'MLB-3.png', 'Bigball Chunky', 500, 1, 500, 27),
(42, 0, 26, 'vans-3.jpg', 'Vanz V', 733, 1, 733, 28),
(43, 0, 26, 'vans-3.jpg', 'Vanz V', 733, 1, 733, 28),
(44, 1, 26, 'vans-3.jpg', 'Vanz V', 733, 1, 733, 29),
(45, 1, 26, 'vans-3.jpg', 'Vanz V', 733, 1, 733, 29),
(46, 1, 22, 'Jordan-2.jpg', 'Navy Like Auth', 1000, 1, 1000, 29),
(47, 1, 22, 'Jordan-2.jpg', 'Navy Like Auth', 1000, 1, 1000, 30),
(48, 1, 21, 'Jordan-1.jpg', 'Volt Gold', 1100, 1, 1100, 31),
(49, 1, 28, 'mlb-1.jpg', 'PlayBall Mule Mono', 400, 1, 400, 32),
(50, 5, 30, 'Nike-Air-Force-2.jpg', '07 QS Valentine’s', 1000, 1, 1000, 33),
(51, 5, 30, 'Nike-Air-Force-2.jpg', '07 QS Valentine’s', 1000, 1, 1000, 34),
(52, 0, 33, 'Jordan-1.jpg', 'Volt Gold', 1000, 1, 1000, 35),
(53, 0, 33, 'Jordan-1.jpg', 'Volt Gold', 1000, 1, 1000, 36),
(54, 0, 26, 'vans-3.jpg', 'Vanz V', 733, 1, 733, 36),
(55, 1, 27, 'MLB-3.png', 'Bigball Chunky', 500, 1, 500, 37),
(56, 0, 33, 'Jordan-1.jpg', 'Volt Gold', 1000, 1, 1000, 38),
(57, 1, 30, 'Nike-Air-Force-2.jpg', '07 QS Valentine’s', 1000, 1, 1000, 39),
(58, 0, 33, 'Jordan-1.jpg', 'Volt Gold', 1000, 1, 1000, 40),
(59, 1, 33, 'Jordan-1.jpg', 'Volt Gold', 1000, 1, 1000, 41),
(60, 0, 33, 'Jordan-1.jpg', 'Volt Gold', 1000, 1, 1000, 42),
(61, 1, 33, 'Jordan-1.jpg', 'Volt Gold', 1000, 1, 1000, 43),
(62, 1, 30, 'Nike-Air-Force-2.jpg', '07 QS Valentine’s', 1000, 1, 1000, 44),
(63, 1, 31, 'Nike-Air-Force-3.jpg', 'Paisley Swoosh ', 1200, 1, 1200, 45),
(64, 1, 38, 'AF1-Flax-11-800x600.jpg', ' Low Flax ', 1400, 1, 1400, 46),
(65, 1, 38, 'AF1-Flax-11-800x600.jpg', ' Low Flax ', 1400, 1, 1400, 47),
(66, 1, 31, 'Nike-Air-Force-3.jpg', 'Paisley Swoosh ', 1200, 1, 1200, 47),
(67, 1, 38, 'AF1-Flax-11-800x600.jpg', ' Low Flax ', 1400, 1, 1400, 48);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(10, 'MLB'),
(11, 'Vans Vault'),
(12, 'Jordan'),
(13, 'Nike Air Force');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(10,2) DEFAULT 0.00,
  `img` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `luotxem` int(11) DEFAULT 0,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `img`, `mota`, `luotxem`, `iddm`) VALUES
(22, 'Navy Like Auth', 1000.00, 'Jordan-2.jpg', '', 10, 12),
(23, 'Travis Scott x Fragment', 2000.00, 'Jordan-3.jpg', '', 0, 12),
(24, 'Black White', 100.00, 'vans-1.jpg', '', 25, 11),
(25, 'Checkerboard', 200.00, 'vans-2.jpg', '', 12, 11),
(26, 'Vanz V', 733.00, 'vans-3.jpg', 'Cam kết chỉ bán giày chuẩn rep 1:1, chất lượng đảm bảo tuyệt đối.\r\nVideo quay review, phân biệt so sánh từng chất lượng khác nhau.\r\nKhách hàng được kiểm tra, đi thử trước khi nhận hàng.', 0, 11),
(27, 'Bigball Chunky', 500.00, 'MLB-3.png', 'Thông tin phát hành sản phẩm\r\nMua Giày MLB Bigball Chunky Monogram LT New York Yankees 32SHCM111-50I chính hãng 100% có sẵn tại Authentic Shoes. Giao hàng miễn phí trong 1 ngày. Cam kết đền tiền X5 nếu phát hiện Fake. Đổi trả miễn phí size. MUA NGAY!', 6, 10),
(28, 'PlayBall Mule Mono', 400.00, 'mlb-1.jpg', 'Thông tin phát hành sản phẩm\r\nMua giày MLB PlayBall Mule Mono Denim New York Yankees 32SHSD111-50N chính hãng 100% có sẵn tại Authentic Shoes. Giao hàng miễn phí trong 1 ngày. Cam kết đền tiền X5 nếu phát hiện Fake. Đổi trả miễn phí size. FREE vệ sinh trọn đời. MUA NGAY!', 9, 10),
(29, 'Chunky P Boston Red', 600.00, 'mlb-2.jpg', 'Thông tin phát hành sản phẩm\r\nMua Giày MLB Bigball Chunky P Boston Red Sox 32SHC2011-43I chính hãng 100% có sẵn tại Authentic Shoes. Giao hàng miễn phí trong 1 ngày. Cam kết đền tiền X5 nếu phát hiện Fake. Đổi trả miễn phí size. FREE vệ sinh trọn đời. MUA NGAY!', 15, 10),
(30, '07 QS Valentine’s', 1000.00, 'Nike-Air-Force-2.jpg', '* Đặc tính nổi trội: - Lưỡi gà polyester close-up ren và brand\r\n\r\n                            - Upper da tổng hợp\r\n\r\n                            - Nike Swoosh ở hai bên\r\n\r\n                            - Toe box đục lỗ\r\n\r\n                            - Đệm quanh lót cổ chân\r\n\r\n                            - Đế ngoài và đế giữa cao su bền và ổn định\r\n\r\n* Fitsize: True size hoặc down 0,5 size\r\n\r\n* Chất liệu: Đế Air, Cup sole, da, lưới.', 0, 13),
(31, 'Paisley Swoosh ', 1200.00, 'Nike-Air-Force-3.jpg', 'Thương hiệu: Nike\r\n\r\nNhà thiết kế: Bruce Kilgore\r\n\r\nCông nghệ: Đế Air\r\n\r\nMàu sắc: Xanh Navy\r\n\r\nKiểu dáng: Lifestyle\r\n\r\nFit size: Down 0,5 đến 1 size\r\n\r\nMã sản phẩm: CJ8731-400', 5, 13),
(32, 'LV8 GS ‘Double Swoosh’', 1100.00, 'NIKE-AIR-FORCE-1.jpeg', '* Đặc tính nổi trội: - Lưỡi gà polyester close-up ren và brand\r\n\r\n                            - Upper da tổng hợp\r\n\r\n                            - Nike Swoosh ở hai bên\r\n\r\n                            - Toe box đục lỗ\r\n\r\n                            - Nubuck da lộn điểm nhấn trên khoen và gót chân\r\n\r\n                            - Đế ngoài và đế giữa cao su bền và ổn định\r\n\r\n* Fitsize: True size hoặc down 0,5 size\r\n\r\n* Chất liệu: Đế Air, Cup sole, da, lưới.', 0, 13),
(35, 'Custom – Gucci', 1100.00, 'Nike-Air-Force-1-Gucci-800x600.jpeg', 'Cam kết chỉ bán giày chuẩn rep 1:1, chất lượng đảm bảo tuyệt đối.\r\nVideo quay review, phân biệt so sánh từng chất lượng khác nhau.\r\nKhách hàng được kiểm tra, đi thử trước khi nhận hàng.\r\nGiao hàng toàn quốc đồng giá 30k, FREESHIP với đơn hàng trên 2 triệu.\r\nThanh toán khi nhận hàng.', 0, 13),
(37, 'Vans Style Black', 200.00, 'giay-vans-old-skool-trang-soc-xanh-replica-800x599.jpg', 'Cam kết chỉ bán giày chuẩn rep 1:1, chất lượng đảm bảo tuyệt đối.\r\nVideo quay review, phân biệt so sánh từng chất lượng khác nhau.\r\nKhách hàng được kiểm tra, đi thử trước khi nhận hàng.\r\nGiao hàng toàn quốc đồng giá 30k, FREESHIP với đơn hàng trên 2 triệu.\r\nThanh toán khi nhận hàng', 0, 11),
(38, ' Low Flax ', 1400.00, 'AF1-Flax-11-800x600.jpg', 'Cam kết chỉ bán giày chuẩn rep 1:1, chất lượng đảm bảo tuyệt đối.\r\nVideo quay review, phân biệt so sánh từng chất lượng khác nhau.\r\nKhách hàng được kiểm tra, đi thử trước khi nhận hàng.\r\nGiao hàng toàn quốc đồng giá 30k, FREESHIP với đơn hàng trên 2 triệu.\r\nThanh toán khi nhận hàng.', 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(10) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(1, 'truyen', '123456', 'phantruyen19722@gmail.com', 'Binh Dinh', '0346646057', 1),
(4, 'Phan Ngọc Truyền', '123456', 'phantruyen19722@gmail.com', 'Bình Định', '0346646057', 0),
(5, 'phantruyen', '123456', 'phant19722@gmail.com', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpro` (`idpro`),
  ADD KEY `iduser` (`iduser`),
  ADD KEY `idbill` (`idbill`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham_danhmuc` (`iddm`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
