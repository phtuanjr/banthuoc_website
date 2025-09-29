-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 02:27 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhathuoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `id_taikhoan` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `id_taikhoan`, `id_sanpham`, `noidung`) VALUES
(19, 15, 3, 'Sản phẩm dùng rất tốt.'),
(28, 5, 3, 'Thanks b'),
(29, 5, 3, 'cmt');

-- --------------------------------------------------------

--
-- Table structure for table `ctdonhang`
--

CREATE TABLE `ctdonhang` (
  `id` int(11) NOT NULL,
  `id_donhang` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ctdonhang`
--

INSERT INTO `ctdonhang` (`id`, `id_donhang`, `id_sanpham`, `soluong`, `gia`) VALUES
(37, 43, 5, 1, 7490000),
(38, 43, 4, 1, 9190000),
(41, 45, 9, 2, 11790000),
(47, 50, 17, 3, 4990000),
(48, 50, 10, 1, 27000000),
(50, 51, 3, 1, 39490000),
(55, 53, 20, 2, 6290000),
(56, 54, 3, 2, 39490000),
(57, 54, 22, 1, 10000000),
(58, 55, 23, 2, 66666),
(59, 55, 20, 1, 6290000),
(60, 55, 22, 2, 10000000),
(61, 49, 3, 1, 39490000),
(62, 49, 10, 1, 27000000),
(63, 49, 19, 1, 10020000),
(64, 49, 30, 1, 98000),
(68, 57, 3, 1, 39490000),
(69, 58, 3, 2, 39490000),
(70, 58, 34, 1, 78000),
(71, 58, 36, 2, 89000),
(72, 57, 34, 1, 78000);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_dm` int(11) NOT NULL,
  `danhmuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id_dm`, `danhmuc`) VALUES
(1, 'Thực phẩm chức năng'),
(3, 'Dụng cụ y tế'),
(4, 'Thuốc'),
(5, 'Chăm sóc cá nhân'),
(6, 'Thuốc làm đẹp, Giảm cân'),
(7, 'Thiết bị'),
(8, 'Y tế khác'),
(9, 'Trắng răng');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `id_taikhoan` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `diachi` text DEFAULT NULL,
  `thoigian` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `id_taikhoan`, `tongtien`, `status`, `diachi`, `thoigian`) VALUES
(43, 15, 16680000, 3, 'Đại Học Công Nghiệp Hà Nội, Bắc Từ Liêm, Hà Nội', '05-02-2022 21:08:43'),
(45, 16, 23580000, 3, 'số nhà 19 ngõ 86 Phú Kiều, Phúc Diễn, Bắc Từ Liêm, Hà Nội', '10-03-2022 21:46:44'),
(54, 21, 88980000, 3, ' hcm vn q9', '09-05-2023 14:38:42'),
(55, 22, 26423332, 4, ' hcm vn q9', '09-05-2023 14:51:00'),
(57, 5, 0, 0, NULL, NULL),
(58, 24, 79236000, 3, ' hcm vn q10', '15-05-2023 10:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `nhasanxuat` varchar(255) NOT NULL,
  `quycach` varchar(255) NOT NULL,
  `thanhphan` varchar(255) NOT NULL,
  `thuonghieu` varchar(255) NOT NULL,
  `cachdung` varchar(255) NOT NULL,
  `xuatxu` varchar(255) NOT NULL,
  `bonho` varchar(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `anh1` text NOT NULL,
  `anh2` text NOT NULL,
  `anh3` text NOT NULL,
  `chitiet` text NOT NULL,
  `mota` text NOT NULL,
  `luotxem` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_danhmuc`, `ten`, `nhasanxuat`, `quycach`, `thanhphan`, `thuonghieu`, `cachdung`, `xuatxu`, `bonho`, `gia`, `anh1`, `anh2`, `anh3`, `chitiet`, `mota`, `luotxem`, `status`) VALUES
(47, 1, 'Anfa Calcium bổ sung canxi và vitamin D3 cho cơ thể hộp 30 viên', 'Việt Nam', '1 hộp', 'Trong 1 viên có chứa:   Aquamin F 1000mg (chứa 32% canxi từ tảo biển đỏ)   Calci nano hydroxyapatite 200mg (canxi nano hydroxyapatite)   Inulin 100mg   MgO (Magie oxyd) 40mg   Neogos-p70 30mg (Galacto – oligosaccharides)   Kẽm gluconate 15mg   Vitamin K2 ', ' An Huy (Việt Nam) ', '7', '200', 'Bổ sung can', 78000, 'briozcal-hinh-2.jpg', 'briozcal-hinh-4.jpg', 'briozcal-hinh-3.jpg', 'Công dụng \r\nBổ sung canxi và vitamin D3 cho cơ thể, giúp xương và răng chắc khỏe. \r\n\r\nHỗ trợ phát triển chiều cao, giúp giảm nguy cơ còi xương ở trẻ em, loãng xương ở người lớn.   \r\n\r\nĐối tượng sử dụng\r\nTrẻ em có biểu hiện còi xương, chậm lớn, chậm thay răng, trẻ đang trong thời kỳ phát triển chiều cao, phụ nữ có thai, cho con bú tăng nhu cầu canxi hoặc do chế độ ăn thiết hụt; người có biểu hiện giảm canxi máu, phụ nữ tiền mãn kinh và mãn kinh, người cao tuổi có biểu hiện loãng xương hoặc nguy cơ loãng xương.   \r\n\r\nHướng dẫn sử dụng\r\nTrẻ em từ 6 tuổi và người lớn, phụ nữ có thai, cho con bú: Uống 1 viên/lần/ngày   \r\n\r\nLưu ý\r\nKhông dùng cho người bị sỏi tiết niệu. \r\n\r\nSản phẩm này không phải là thuốc, không có tác dụng thay thế thuốc chữa bệnh. \r\n\r\nKhông dùng cho người mẫn cảm với bất kỳ thành phần nào của sản phẩm.   \r\n\r\nBảo quản\r\nNơi khô ráo, thoáng mát, tránh ánh sáng mặt trời. \r\n\r\nVITAMIN VÀ KHOÁNG CHẤT KHÁC\r\n\r\n\r\n', 'Trẻ em có biểu hiện còi xương, chậm lớn, chậm thay răng, trẻ đang trong thời kỳ phát triển chiều cao, phụ nữ có thai, cho con bú tăng nhu cầu canxi hoặc do chế độ ăn thiết hụt; người có biểu hiện giảm canxi máu, phụ nữ tiền mãn kinh và mãn kinh, người cao tuổi có biểu hiện loãng xương hoặc nguy cơ loãng xương.   ', 5, 1),
(48, 1, 'USmart Vitamin E 400 hạn chế lão hóa, làm đẹp da hộp 100 viên', 'Việt nam', '1 hộp', 'Mỗi viên nang mềm chứa: Vitamin E (dl-alpha-tocopheryl acetate): 400 IU  Other ingredients: Gelatin, Glycerine, Purified Water.', 'Usmart (Mỹ)', '5', '500', 'Chống lão h', 900000, 'imager_16433.jpg', '', '', 'Cách dùng - Liều dùng\r\nNgười lớn: Ngày uống 1 lần, mỗi lần 1 viên. Ngay sau khi ăn.\r\n\r\nLưu ý khi sử dụng (Cảnh báo và thận trọng)\r\nSản phẩm nên sử dụng đúng và đủ thời gian điều trị. Không nên để lâu khi đang sử dụng sẽ ảnh hưởng đến chất lượng sản phẩm.\r\n\r\nBảo quản\r\nBảo quản nơi khô mát, tránh ánh nắng mặt trời.\r\n\r\nQuy cách đóng gói\r\nHộp 10 vỉ x 10 viên.\r\n\r\nHạn dùng\r\n3 năm kể từ ngày sản xuất.\r\nThông tin khác\r\nLưu ý:\r\n\r\n- Để xa tầm với trẻ em.\r\n\r\n- Không dùng quá hạn trên bao bì.\r\n\r\n- Không dùng những viên có bất kỳ thay đổi bất thường nào.\r\n\r\n- Phụ nữ có thai cần hỏi ý kiến bác sĩ trước khi sử dụng.\r\n\r\n- Sản phẩm này không phải là thuốc, không có tác dụng thay thế thuốc chữa bệnh.\r\n\r\n- Đọc kỹ hướng dẫn sử dụng trước khi dùng.', 'Chống lão hóa\r\n\r\nGiúp làm đẹp da\r\n\r\nHỗ trợ sức khỏe sinh sản và hỗ trợ phòng các chứng bệnh do thiếu Vitamin E\r\n\r\nĐối tượng thích hợp:\r\n\r\nNgười thiếu Vitamin E, người hay tiếp xúc với môi trường ô nhiễm, ánh nắng mặt trời, da xấu, người muốn duy trì làn da khỏe mạnh', 1, 1),
(49, 4, 'Hapacol 650 giảm đau, hạ sốt (10 vỉ x 5 viên)', 'x', 'x', 'x', 'x', '5', '5', 'e', 45000, 'hapacol-650-2-1.jpg', 'hapacol-650-2-1.jpg', 'hapacol-650-2-1.jpg', 'd', 'd', 1, 1),
(50, 1, 'Anfa Calcium bổ sung canxi và vitamin D3 cho cơ thể hộp 30 viên', 'drgf', 'f', 'f', 'f', '4', '44', 'dfd', 780000, 'telfast-bd-60mg-mac-dinh-2.jpg', 'telfast-bd-60mg-mac-dinh-2.jpg', 'telfast-bd-60mg-mac-dinh-2.jpg', 'rgd', 'gf', 1, 1),
(51, 3, 'Miếng dán hạ sốt ByeBye Fever Super Cool (3 gói x 2 miếng)', 'd', 'd', 'd', 'd', '5', '5', 'd', 67000, 'rohto-alcofree-50ml-hop-10chai-1 (1).jpg', '', '', 'ẻt', 'rte', 0, 1),
(52, 6, 'Philife L-Cystine làm đẹp da, tóc, móng hộp 60 viên', 'rgd', 'ẻg', 'dfgh', 'dfhg', '66', '6', 'hdf', 67800, 'l-cystin-korea-hinh-2.jpg', 'l-cystin-korea-hinh-2.jpg', '', 'd', 'ưe', 0, 0),
(53, 4, 'Ferrovit bổ sung sắt và axit folic, trị thiếu máu (5 vỉ x 10 viên)', 'v', 'v', 'v', 'v', '5', '5', 'v', 89000, 'ferrovit-mac-dinh-2.jpg', 'ferrovit-mac-dinh-2.jpg', 'ferrovit-mac-dinh-2.jpg', 'v', 'v', 0, 0),
(54, 1, 'Vitamin PP Mekophar 500mg trị thiếu nicotinamide chai 100 viên 500₫/Viên CHỌN MUA 50.000₫/Chai', 'v', 'v', 'v', 'v', '5', '5', 'v', 90000, 'vitamin-pp-500mg-chai100vien-2.jpg', '', '', 'v', 'v', 1, 0),
(55, 3, 'Vitamin PP Mekophar 500mg trị thiếu nicotinamide chai 100 viên 500₫/Viên CHỌN MUA 50.000₫/Chai', 'vn', 'v', 'v', 'v', '5', '5', 'g', 9000, 'gac-bao-thach-5x6x12-hinh-2.jpg', 'gac-bao-thach-5x6x12-hinh-2.jpg', 'gac-bao-thach-5x6x12-hinh-2.jpg', 'f', 'c', 0, 0),
(56, 3, 'Máy đo nồng độ oxy trong máu SPO2 Microlife Oxy 200', 'v', 'v', 'v', 'v', '5', '5', 'cv', 89000, 'may-do-oxy-trong-mau-spo2-microlife-oxy-200-1-2.jpg', 'may-do-oxy-trong-mau-spo2-microlife-oxy-200-1-2.jpg', 'may-do-oxy-trong-mau-spo2-microlife-oxy-200-1-2.jpg', 'd', 'd', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `anh` text NOT NULL,
  `mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `ten`, `link`, `anh`, `mota`) VALUES
(1, 'Nhà thuốc thân thiện', 'detail.php?id=3', 'dgm_nttt_banner-thuoc-tay-mb-1 (1).jpg', 'Bổ sung vitamin và khoáng chất Vsicelo bổ sung vitamin và khoáng chất cho cơ thể, giúp tăng cường sức khỏe, nâng cao sức đề kháng trong trường hợp cơ thể suy nhược,'),
(8, 'Calcium canxi', 'detail.php?id=12', 'ngay-hoi-suc-khoe-tai-nha-thuoc-an-khang-25-26-06-1-_1875x1257-800-resize.jpg', 'Calci nano hydroxyapatite 200mg (canxi nano hydroxyapatite) , Inulin 100mg , MgO (Magie oxyd) 40mg , Neogos-p70 30mg (Galacto – oligosaccharides) ');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `taikhoan` varchar(55) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `anh` text NOT NULL,
  `sdt` text NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `phanquyen` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `taikhoan`, `matkhau`, `hoten`, `anh`, `sdt`, `diachi`, `phanquyen`, `status`) VALUES
(1, 'nguyenvana@gmail.com', 'nguyenvana', 'Nguyễn Văn A', '', '0983428914', 'Khu tái định cư Thôn Lạc Thịnh, Hợp Thịnh, Tam Dương, Vĩnh Phúc', 0, 0),
(5, 'admin', 'admin', 'Codedoan.com', 'comment_3.png', '0977142274', 'Chung cư Tân Việt, Đức Thượng, Hoài Đức, Hà Nội', 1, 0),
(13, 'levanb@gmail.com', 'levanb', 'Lê Văn B', 'comment_3.png', '0987346849', 'Chung cư Tân Tây Đô, xã Tân Lập, huyện Đan Phượng, TP. Hà Nội', 0, 0),
(15, 'doubled@gmail.com', 'doubled', 'DoubleD', 'comment_2.png', '0989994981', 'Đại Học Công Nghiệp Hà Nội, Bắc Từ Liêm, Hà Nội', 0, 0),
(16, 'phungvanc@gmail.com', 'phungvanc', 'Phùng Văn CA', '', '0977146357', 'số nhà 19 ngõ 86 Phú Kiều, Phúc Diễn, Bắc Từ Liêm, Hà Nội', 1, 0),
(18, 'kienltk710@gmail.com', 'ltkdt12343', 'Le Kienxxx', '', '0947028450', '', 1, 1),
(19, 'nnn@gmail.com', 'nnn', 'nnn', '', '0987654321', '', 0, 1),
(20, 'demoweb@gmail.com', 'demoweb1', 'demoweb', '638176054475714902_acer-aspire-a315-59-321n-i3-1215u-bac-dd.jpg', '0987654321', '', 0, 1),
(21, 'democode@gmail.com', 'democode1', 'democodexx', 'ban.jpg', '0987654321', 'hcm q99', 1, 0),
(22, 'Demno1@gmail.com', 'Demno1', 'Demno1', 'mac-banner.jpg', '0987654321', 'hcm', 0, 1),
(23, 'demoweb1@gmail.com', '123456', 'demoweb1', '', '0917982707', '', 0, 0),
(24, 'demoweb2@gmail.com', '123456', 'demoweb2', 'Screenshot (1909).png', '0364877524', 'hcm q10', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tlbinhluan`
--

CREATE TABLE `tlbinhluan` (
  `id` int(11) NOT NULL,
  `id_binhluan` int(11) NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlbinhluan`
--

INSERT INTO `tlbinhluan` (`id`, `id_binhluan`, `noidung`) VALUES
(13, 19, 'Cảm ơn bạn đã bình luận về sản phẩm ạ. Chúc bạn một ngày tốt lành');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id sản phẩm` (`id_sanpham`),
  ADD KEY `id tài khoản` (`id_taikhoan`);

--
-- Indexes for table `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_id_donhang` (`id_donhang`),
  ADD KEY `Fk_id_sanpham` (`id_sanpham`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_dm`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_takhoan` (`id_taikhoan`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id danh mục` (`id_danhmuc`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tlbinhluan`
--
ALTER TABLE `tlbinhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id bình luận` (`id_binhluan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `ctdonhang`
--
ALTER TABLE `ctdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_dm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tlbinhluan`
--
ALTER TABLE `tlbinhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `fk_id_sanpham_bl` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_id_taikhoan` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
