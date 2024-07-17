-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2024 at 01:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thong_tin_y_te_giang_vien`
--

-- --------------------------------------------------------

--
-- Table structure for table `dat_lich_kham`
--

CREATE TABLE `dat_lich_kham` (
  `ma_dat_lich_kham` int(11) NOT NULL,
  `ma_khach_hang` varchar(10) DEFAULT NULL,
  `ma_dich_vu` int(11) DEFAULT NULL,
  `ngay_kham` date DEFAULT NULL,
  `gio_kham` time DEFAULT NULL,
  `trang_thai` enum('dang_cho','da_xac_nhan','da_kham','da_huy') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dat_lich_kham`
--

INSERT INTO `dat_lich_kham` (`ma_dat_lich_kham`, `ma_khach_hang`, `ma_dich_vu`, `ngay_kham`, `gio_kham`, `trang_thai`) VALUES
(1, 'GV001', 4, '2024-05-24', '08:00:00', 'dang_cho'),
(2, 'GV003', 10, '2024-05-24', '08:00:00', 'dang_cho'),
(3, 'GV007', 2, '2024-05-24', '08:00:00', 'dang_cho'),
(4, 'GV010', 1, '2024-05-24', '08:00:00', 'dang_cho');

-- --------------------------------------------------------

--
-- Table structure for table `dat_lich_tiem_chung`
--

CREATE TABLE `dat_lich_tiem_chung` (
  `ma_dat_lich_tiem_chung` int(11) NOT NULL,
  `ma_khach_hang` varchar(10) DEFAULT NULL,
  `ma_vac_xin` int(11) DEFAULT NULL,
  `ngay_kham` date DEFAULT NULL,
  `gio_kham` time DEFAULT NULL,
  `trang_thai` enum('dang_cho','da_xac_nhan','da_kham','da_huy') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dat_lich_tiem_chung`
--

INSERT INTO `dat_lich_tiem_chung` (`ma_dat_lich_tiem_chung`, `ma_khach_hang`, `ma_vac_xin`, `ngay_kham`, `gio_kham`, `trang_thai`) VALUES
(1, 'GV008', 4, '2024-05-18', '09:00:00', 'dang_cho'),
(2, 'GV009', 1, '2024-05-18', '09:00:00', 'dang_cho'),
(3, 'GV010', 5, '2024-05-18', '09:00:00', 'dang_cho'),
(4, 'GV001', 1, '2024-05-18', '09:00:00', 'dang_cho');

-- --------------------------------------------------------

--
-- Table structure for table `dich_vu_y_te`
--

CREATE TABLE `dich_vu_y_te` (
  `ma_dich_vu` int(11) NOT NULL,
  `ten_dich_vu` varchar(255) NOT NULL,
  `gia_tien` int(11) DEFAULT NULL,
  `mo_ta` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dich_vu_y_te`
--

INSERT INTO `dich_vu_y_te` (`ma_dich_vu`, `ten_dich_vu`, `gia_tien`, `mo_ta`) VALUES
(1, 'Khám sức khỏe tổng quát', 500000, 'Khám tổng thể các cơ quan chức năng trong cơ thể'),
(2, 'Khám răng miệng', 300000, 'Khám, tư vấn và điều trị các bệnh lý về răng miệng'),
(3, 'Siêu âm thai', 250000, 'Theo dõi tình trạng sức khỏe của thai nhi'),
(4, 'Xét nghiệm máu', 150000, 'Chẩn đoán các bệnh lý thông qua xét nghiệm các chỉ số trong máu'),
(5, 'Chụp X-quang', 100000, 'Chẩn đoán hình ảnh các cơ quan, bộ phận trong cơ thể'),
(6, 'Điều trị nha khoa', 800000, 'Bọc răng sứ, trám răng, tẩy trắng răng,...'),
(7, 'Phẫu thuật thẩm mỹ', 2000000, 'Nâng mũi, cắt mí, hút mỡ,...'),
(8, 'Chăm sóc da mặt', 1200000, 'Điều trị mụn, nám, tàn nhang, trẻ hóa da,...'),
(9, 'Vật lý trị liệu', 400000, 'Phục hồi chức năng sau tai biến, chấn thương,...'),
(10, 'Y học cổ truyền', 350000, 'Châm cứu, bấm huyệt, xoa bóp,...');

-- --------------------------------------------------------

--
-- Table structure for table `ho_so_suc_khoe`
--

CREATE TABLE `ho_so_suc_khoe` (
  `ma_hssk` int(11) NOT NULL,
  `tien_su_benh` text NOT NULL,
  `chieu_cao` varchar(6) NOT NULL,
  `can_nang` varchar(6) NOT NULL,
  `bmi` varchar(10) NOT NULL,
  `tuan_hoan` text NOT NULL,
  `ho_hap` text NOT NULL,
  `tieu_hoa` text NOT NULL,
  `than` text NOT NULL,
  `noi_tiet` text NOT NULL,
  `xuong` text NOT NULL,
  `than_kinh` text NOT NULL,
  `ngoai_khoa` text NOT NULL,
  `san_khoa` text NOT NULL,
  `mat_trai` varchar(10) NOT NULL,
  `mat_phai` varchar(10) NOT NULL,
  `mat_trai_co_kinh` varchar(10) NOT NULL,
  `mat_phai_co_kinh` varchar(10) NOT NULL,
  `benh_mat` varchar(50) NOT NULL,
  `tai_mui_hong` varchar(50) NOT NULL,
  `tai_phai` varchar(20) NOT NULL,
  `tai_trai` varchar(20) NOT NULL,
  `benh_ve_tai` varchar(50) NOT NULL,
  `rang_ham_mat` text NOT NULL,
  `ham_tren` varchar(20) NOT NULL,
  `ham_duoi` varchar(20) NOT NULL,
  `benh_ve_rang` varchar(20) NOT NULL,
  `da_lieu` varchar(50) NOT NULL,
  `ngay_kham` date NOT NULL,
  `ma_bac_si` varchar(10) NOT NULL,
  `ma_giang_vien` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ho_so_suc_khoe`
--

INSERT INTO `ho_so_suc_khoe` (`ma_hssk`, `tien_su_benh`, `chieu_cao`, `can_nang`, `bmi`, `tuan_hoan`, `ho_hap`, `tieu_hoa`, `than`, `noi_tiet`, `xuong`, `than_kinh`, `ngoai_khoa`, `san_khoa`, `mat_trai`, `mat_phai`, `mat_trai_co_kinh`, `mat_phai_co_kinh`, `benh_mat`, `tai_mui_hong`, `tai_phai`, `tai_trai`, `benh_ve_tai`, `rang_ham_mat`, `ham_tren`, `ham_duoi`, `benh_ve_rang`, `da_lieu`, `ngay_kham`, `ma_bac_si`, `ma_giang_vien`) VALUES
(1, 'Không có', '168', '60', '21', 'Tốt', 'Tốt', 'Tốt', 'Tốt', 'Tốt', 'Tốt', 'Tốt', 'Tốt', 'Tốt', '10', '9', '0', '0', 'Không', 'Tốt', '8', '9', 'Không', 'Tốt', 'Tốt', 'Tốt', 'Không', 'Không', '2024-05-02', 'BS001', 'GV007'),
(2, 'Không có', '170', '58', '22', 'Tốt', 'Tốt', 'Tốt', 'Tốt', 'Tốt', 'Tốt', 'Tốt', 'Tốt', 'Tốt', '10', '9', '0', '0', 'Không', 'Tốt', '8', '9', 'Không', 'Tốt', 'Tốt', 'Tốt', 'Không', 'Không', '2024-05-02', 'BS002', 'GV001');

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `ma_tk` varchar(10) NOT NULL,
  `ho_ten_tk` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `gioi_tinh` enum('Nam','Nữ') NOT NULL,
  `ngay_sinh` date NOT NULL,
  `dia_chi` text DEFAULT NULL,
  `quyen` enum('admin','bac_si','giang_vien') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tai_khoan`
--

INSERT INTO `tai_khoan` (`ma_tk`, `ho_ten_tk`, `mat_khau`, `email`, `sdt`, `gioi_tinh`, `ngay_sinh`, `dia_chi`, `quyen`) VALUES
('AD001', 'Quản trị viên', '123', 'admin@gmail.com', '123456789', 'Nam', '1990-01-01', 'Trà Vinh', 'admin'),
('BS001', 'Lâm Minh Khang', '123', 'lamminhkhang@gmail.com', '111111111', 'Nam', '1980-02-02', 'Trà Vinh', 'bac_si'),
('BS002', 'Đỗ Thành Nhân', '123', 'dothanhnhan@gmail.com', '222222222', 'Nam', '1985-03-03', 'Trà Vinh', 'bac_si'),
('BS003', 'Nguyễn Văn Dũng', '123', 'nguyenvandung@gmail.com', '333333333', 'Nam', '1990-04-04', 'Trà Vinh', 'bac_si'),
('BS004', 'Nguyễn Tuyết Nhung', '123', 'nguyentuyennhung@gmail.com', '444444444', 'Nữ', '1995-05-05', 'Trà Vinh', 'bac_si'),
('BS005', 'Thái Công Nhạ', '123', 'thaicongnha@gmail.com', '555555555', 'Nam', '2000-06-06', 'Trà Vinh', 'bac_si'),
('BS006', 'Lý Kim Lam', '123', 'lykimlam@gmail.com', '666666666', 'Nam', '2005-07-07', 'Trà Vinh', 'bac_si'),
('GV001', 'Võ Thành C', '123', 'vothanhc@gmail.com', '777777777', 'Nam', '1970-08-08', 'Trà Vinh', 'giang_vien'),
('GV002', 'Phạm Minh Đương', '123', 'phamminhduong@gmail.com', '888888888', 'Nam', '1975-09-09', 'Trà Vinh', 'giang_vien'),
('GV003', 'Nguyễn Bá Nhiệm', '123', 'nguyenbanhiem@gmail.com', '999999999', 'Nam', '1980-10-10', 'Trà Vinh', 'giang_vien'),
('GV004', 'Phan Thị Phương Nam', '123', 'phanthiphuongnam@gmail.com', '1010101010', 'Nữ', '1985-11-11', 'Trà Vinh', 'giang_vien'),
('GV005', 'Võ Phước Hưng', '123', 'vophuochung@gmail.com', '1111111111', 'Nam', '1990-12-12', 'Trà Vinh', 'giang_vien'),
('GV006', 'Hà Thị Tú Vy', '123', 'hathituvy@gmail.com', '1212121212', 'Nữ', '1995-01-13', 'Trà Vinh', 'giang_vien'),
('GV007', 'Trần Khánh Duy', '123', 'trankhanhduy@gmail.com', '1313131313', 'Nam', '2000-02-14', 'Trà Vinh', 'giang_vien'),
('GV008', 'Nguyễn Khắc Quốc', '123', 'nguyenkhacquoc@gmail.com', '1414141414', 'Nam', '2005-03-15', 'Trà Vinh', 'giang_vien'),
('GV009', 'Đoàn Phước Miền', '123', 'doanphuocmien@gmail.com', '1515151515', 'Nam', '2010-04-16', 'Trà Vinh', 'giang_vien'),
('GV010', 'Đỗ Thành Ý', '123', 'dothanhy@gmail.com', '1616161616', 'Nam', '2015-05-17', 'Trà Vinh', 'giang_vien');

-- --------------------------------------------------------

--
-- Table structure for table `vac_xin`
--

CREATE TABLE `vac_xin` (
  `vac_xin_id` int(11) NOT NULL,
  `ten_vac_xin` varchar(255) DEFAULT NULL,
  `ten_khoa_hoc` varchar(255) DEFAULT NULL,
  `nha_san_xuat` varchar(255) DEFAULT NULL,
  `doi_tuong_tiem` varchar(255) DEFAULT NULL,
  `lieu_trinh_tiem` varchar(255) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `luu_y` text DEFAULT NULL,
  `tac_dung_phu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vac_xin`
--

INSERT INTO `vac_xin` (`vac_xin_id`, `ten_vac_xin`, `ten_khoa_hoc`, `nha_san_xuat`, `doi_tuong_tiem`, `lieu_trinh_tiem`, `gia`, `luu_y`, `tac_dung_phu`) VALUES
(1, 'Havix', 'Viêm gan A', 'GlaxoSmithKline', 'Trẻ em từ 18 tháng tuổi trở lên, người lớn', '2 mũi, cách nhau 6-12 tháng', 450000, 'Lắc đều trước khi sử dụng. Bảo quản ở nhiệt độ 2-8°C.', 'Đau nhức đầu, buồn nôn, tiêu chảy, mệt mỏi.'),
(2, 'Influenza', 'Viêm phổi', 'AstraZeneca', 'Trẻ em từ 6 tháng tuổi trở lên, người lớn', '1 mũi mỗi năm', 250000, 'Lắc đều trước khi sử dụng. Bảo quản ở nhiệt độ 2-8°C.', 'Sốt, đau nhức cơ bắp, đau đầu, buồn nôn.'),
(3, 'MMR', 'Sởi - Quai bị - Rubella', 'Merck Sharp & Dohme', 'Trẻ em từ 12 tháng tuổi trở lên', '2 mũi, cách nhau 4-6 tuần', 600000, 'Lắc đều trước khi sử dụng. Bảo quản ở nhiệt độ 2-8°C.', 'Sốt, phát ban, đau nhức cơ bắp.'),
(4, 'Engerix-B', 'Viêm gan B', 'GlaxoSmithKline', 'Trẻ em từ 2 tháng tuổi trở lên, người lớn', '3 mũi, theo phác đồ 0-1-6 tháng', 800000, 'Lắc đều trước khi sử dụng. Bảo quản ở nhiệt độ 2-8°C.', 'Đau nhức tại chỗ tiêm, mệt mỏi, sốt nhẹ.'),
(5, 'DPT', 'Ho gà - Ho gà - Uốn ván', 'Sanofi Pasteur', 'Trẻ em từ 2 tháng tuổi trở lên', '4 mũi, theo phác đồ 2-3-4-5 tháng', 500000, 'Lắc đều trước khi sử dụng. Bảo quản ở nhiệt độ 2-8°C.', 'Sốt, đau nhức tại chỗ tiêm, quấy khóc.'),
(6, 'OPV', 'Bại liệt', 'Viện Pasteur', 'Trẻ em từ 2 tháng tuổi trở lên', '3 mũi, theo phác đồ 2-3-4 tháng', 300000, 'Uống trực tiếp, không cần pha loãng. Bảo quản ở nhiệt độ 2-8°C.', 'Tiêu chảy nhẹ, nôn trớ.'),
(7, 'BCG', 'Lao', 'Viện Pasteur', 'Trẻ em sơ sinh', '1 mũi duy nhất', 200000, 'Tiêm dưới da, tại bắp tay trên. Theo dõi phản ứng tại chỗ tiêm trong 2 tuần.', 'Sưng đỏ, vón cục tại chỗ tiêm.'),
(8, 'Gardasil', 'Virus Papilloma ở người', 'Merck Sharp & Dohme', 'Trẻ em gái từ 9-14 tuổi, phụ nữ từ 15-45 tuổi', '2-3 mũi, theo phác đồ 0-6-6 tháng hoặc 0-12 tháng', 2200000, 'Lắc đều trước khi sử dụng. Bảo quản ở nhiệt độ 2-8°C.', 'Đau nhức tại chỗ tiêm, sốt nhẹ, mệt mỏi.'),
(9, 'Varicell', 'Thủy đậu', 'GlaxoSmithKline', 'Trẻ em từ 12 tháng tuổi trở lên', '2 mũi, cách nhau 4-6 tuần', 650000, 'Lắc đều trước khi sử dụng. Bảo quản ở nhiệt độ 2-8°C.', 'Ngứa ngáy, phát ban, sốt nhẹ.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dat_lich_kham`
--
ALTER TABLE `dat_lich_kham`
  ADD PRIMARY KEY (`ma_dat_lich_kham`),
  ADD KEY `ma_khach_hang` (`ma_khach_hang`),
  ADD KEY `ma_dich_vu` (`ma_dich_vu`);

--
-- Indexes for table `dat_lich_tiem_chung`
--
ALTER TABLE `dat_lich_tiem_chung`
  ADD PRIMARY KEY (`ma_dat_lich_tiem_chung`),
  ADD KEY `ma_vac_xin` (`ma_vac_xin`),
  ADD KEY `ma_khach_hang` (`ma_khach_hang`);

--
-- Indexes for table `dich_vu_y_te`
--
ALTER TABLE `dich_vu_y_te`
  ADD PRIMARY KEY (`ma_dich_vu`);

--
-- Indexes for table `ho_so_suc_khoe`
--
ALTER TABLE `ho_so_suc_khoe`
  ADD PRIMARY KEY (`ma_hssk`),
  ADD KEY `ma_bac_si` (`ma_bac_si`),
  ADD KEY `ma_giang_vien` (`ma_giang_vien`);

--
-- Indexes for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`ma_tk`);

--
-- Indexes for table `vac_xin`
--
ALTER TABLE `vac_xin`
  ADD PRIMARY KEY (`vac_xin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dat_lich_kham`
--
ALTER TABLE `dat_lich_kham`
  MODIFY `ma_dat_lich_kham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dat_lich_tiem_chung`
--
ALTER TABLE `dat_lich_tiem_chung`
  MODIFY `ma_dat_lich_tiem_chung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dich_vu_y_te`
--
ALTER TABLE `dich_vu_y_te`
  MODIFY `ma_dich_vu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ho_so_suc_khoe`
--
ALTER TABLE `ho_so_suc_khoe`
  MODIFY `ma_hssk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vac_xin`
--
ALTER TABLE `vac_xin`
  MODIFY `vac_xin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dat_lich_kham`
--
ALTER TABLE `dat_lich_kham`
  ADD CONSTRAINT `dat_lich_kham_ibfk_1` FOREIGN KEY (`ma_khach_hang`) REFERENCES `tai_khoan` (`ma_tk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dat_lich_kham_ibfk_2` FOREIGN KEY (`ma_dich_vu`) REFERENCES `dich_vu_y_te` (`ma_dich_vu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dat_lich_tiem_chung`
--
ALTER TABLE `dat_lich_tiem_chung`
  ADD CONSTRAINT `dat_lich_tiem_chung_ibfk_2` FOREIGN KEY (`ma_vac_xin`) REFERENCES `vac_xin` (`vac_xin_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dat_lich_tiem_chung_ibfk_3` FOREIGN KEY (`ma_khach_hang`) REFERENCES `tai_khoan` (`ma_tk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ho_so_suc_khoe`
--
ALTER TABLE `ho_so_suc_khoe`
  ADD CONSTRAINT `ho_so_suc_khoe_ibfk_1` FOREIGN KEY (`ma_bac_si`) REFERENCES `tai_khoan` (`ma_tk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ho_so_suc_khoe_ibfk_2` FOREIGN KEY (`ma_giang_vien`) REFERENCES `tai_khoan` (`ma_tk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
