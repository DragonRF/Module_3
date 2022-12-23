-- create database BT1_CSDL;
-- USE BT1_CSDL;

CREATE TABLE tChiTietHDB(
                            SoHDB nvarchar(10) NOT NULL,
                            MaSach nvarchar(10) NOT NULL,
                            SLBan int NULL,
                            KhuyenMai nvarchar(100) NULL,
                            CONSTRAINT PK_tChiTietHDB PRIMARY KEY CLUSTERED
                                (
                                 SoHDB ASC,
                                 MaSach ASC
                                    )
);
/****** Object:  Table tChiTietHDN    Script Date: 17/09/2020 4:10:49 CH ******/

CREATE TABLE tChiTietHDN(
                                SoHDN nvarchar(10) NOT NULL,
                                MaSach nvarchar(10) NOT NULL,
                                SLNhap int NULL,
                                KhuyenMai nvarchar(100) NULL,
                                CONSTRAINT PK_tChiTietHDN PRIMARY KEY CLUSTERED
                                    (
                                     SoHDN ASC,
                                     MaSach ASC
                                        )
);

CREATE TABLE tHoaDonBan(
                               SoHDB nvarchar(10) NOT NULL,
                               MaNV nvarchar(10) NULL,
                               NgayBan datetime NULL,
                               MaKH nvarchar(10) NULL,
                               CONSTRAINT PK_tHoaDonBan PRIMARY KEY CLUSTERED
                                   (
                                    SoHDB ASC
                                       )
);
CREATE TABLE tHoaDonNhap(
                                SoHDN nvarchar(10) NOT NULL,
                                MaNV nvarchar(10) NULL,
                                NgayNhap datetime NULL,
                                MaNCC nvarchar(10) NULL,
                                CONSTRAINT PK_tHoaDonNhap PRIMARY KEY CLUSTERED
                                    (
                                     SoHDN ASC
                                        )
);
CREATE TABLE tKhachHang(
                               MaKH nvarchar(10) NOT NULL,
                               TenKH nvarchar(50) NULL,
                               DiaChi nvarchar(150) NULL,
                               DienThoai nvarchar(15) NULL,
                               CONSTRAINT PK_tKhachHang PRIMARY KEY CLUSTERED
                                   (
                                    MaKH ASC
                                       )
);
CREATE TABLE tNhaCungCap(
                                MaNCC nvarchar(10) NOT NULL,
                                TenNCC nvarchar(200) NULL,
                                CONSTRAINT PK_tNhaCungCap PRIMARY KEY CLUSTERED
                                    (
                                     MaNCC ASC
                                        )
);
CREATE TABLE tNhanVien(
                              MaNV nvarchar(10) NOT NULL,
                              TenNV nvarchar(50) NULL,
                              GioiTinh nvarchar(5) NULL,
                              NgaySinh datetime NULL,
                              DiaChi nvarchar(150) NULL,
                              DienThoai nvarchar(15) NULL,
                              CONSTRAINT PK_tNhanVien PRIMARY KEY CLUSTERED
                                  (
                                   MaNV ASC
                                      )
);
CREATE TABLE tNhaXuatBan(
                                MaNXB nvarchar(10) NOT NULL,
                                TenNXB nvarchar(100) NULL,
                                CONSTRAINT PK_tNhaXuatBan PRIMARY KEY CLUSTERED
                                    (
                                     MaNXB ASC
                                        )
);
CREATE TABLE tSach(
                          MaSach nvarchar(10) NOT NULL,
                          TenSach nvarchar(200) NULL,
                          TacGia nvarchar(150) NULL,
                          MaTheLoai nvarchar(10) NULL,
                          MaNXB nvarchar(10) NULL,
                          DonGiaNhap float NULL,
                          DonGiaBan float NULL,
                          SoLuong int NULL,
                          SoTrang int NULL,
                          TrongLuong nvarchar(50) NULL,
                          Anh nvarchar(20) NULL,
                          CONSTRAINT PK_tSach PRIMARY KEY CLUSTERED
                              (
                               MaSach ASC
                                  )
);
CREATE TABLE tTheLoai(
                             MaTheLoai nvarchar(10) NOT NULL,
                             TenTheLoai nvarchar(100) NULL,
                             CONSTRAINT PK_tTheLoai PRIMARY KEY CLUSTERED
                                 (
                                  MaTheLoai ASC
                                     )
);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB01', N'S01', 7, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB01', N'S02', 10, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB01', N'S04', 10, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB02', N'S04', 9, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB02', N'S05', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB03', N'S02', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB03', N'S06', 7, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB03', N'S08', 11, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB04', N'S03', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB04', N'S04', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB04', N'S10', 9, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB05', N'S05', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB05', N'S07', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB05', N'S08', 14, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB06', N'S02', 13, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB06', N'S05', 1, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB06', N'S10', 4, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB06', N'S11', 4, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB07', N'S01', 10, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB07', N'S06', 4, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB07', N'S08', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB08', N'S01', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB08', N'S06', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB08', N'S07', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB09', N'S03', 5, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB09', N'S06', 1, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB09', N'S09', 6, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB10', N'S07', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB10', N'S11', 6, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB10', N'S13', 6, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB11', N'S04', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB11', N'S08', 5, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB11', N'S11', 5, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB12', N'S05', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB12', N'S09', 4, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB12', N'S12', 5, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB13', N'S02', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB13', N'S03', 5, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB13', N'S04', 2, NULL);

INSERT tChiTietHDN (SoHDN, MaSach, SLNhap, KhuyenMai) VALUES (N'HDN01', N'S01', 20, NULL);
INSERT tChiTietHDN (SoHDN, MaSach, SLNhap, KhuyenMai) VALUES (N'HDN02', N'S06', 10, NULL);
INSERT tChiTietHDN (SoHDN, MaSach, SLNhap, KhuyenMai) VALUES (N'HDN03', N'S03', 20, NULL);
INSERT tChiTietHDN (SoHDN, MaSach, SLNhap, KhuyenMai) VALUES (N'HDN04', N'S09', 10, NULL);
INSERT tChiTietHDN (SoHDN, MaSach, SLNhap, KhuyenMai) VALUES (N'HDN05', N'S06', 15, NULL);

INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB01', N'NV01', CAST(N'2014-08-11T00:00:00.000' AS DateTime), N'KH01');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB02', N'NV02', CAST(N'2014-05-03T00:00:00.000' AS DateTime), N'KH02');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB03', N'NV03', CAST(N'2013-12-01T00:00:00.000' AS DateTime), N'KH03');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB04', N'NV04', CAST(N'2013-11-12T00:00:00.000' AS DateTime), N'KH01');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB05', N'NV04', CAST(N'2014-05-14T00:00:00.000' AS DateTime), N'KH04');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB06', N'NV05', CAST(N'2014-06-30T00:00:00.000' AS DateTime), N'KH02');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB07', N'NV06', CAST(N'2014-05-10T00:00:00.000' AS DateTime), N'KH01');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB08', N'NV01', CAST(N'2013-01-01T00:00:00.000' AS DateTime), N'KH02');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB09', N'NV01', CAST(N'2013-02-10T00:00:00.000' AS DateTime), N'KH02');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB10', N'NV02', CAST(N'2014-04-10T00:00:00.000' AS DateTime), N'KH04');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB11', N'NV03', CAST(N'2014-03-11T00:00:00.000' AS DateTime), N'KH04');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB12', N'NV03', CAST(N'2014-07-10T00:00:00.000' AS DateTime), N'KH03');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB13', N'NV05', CAST(N'2014-04-12T00:00:00.000' AS DateTime), N'KH04');

INSERT tHoaDonNhap (SoHDN, MaNV, NgayNhap, MaNCC) VALUES (N'HDN01', N'NV02', CAST(N'2014-04-13T00:00:00.000' AS DateTime), N'NCC01');
INSERT tHoaDonNhap (SoHDN, MaNV, NgayNhap, MaNCC) VALUES (N'HDN02', N'NV01', CAST(N'2014-06-28T00:00:00.000' AS DateTime), N'NCC03');
INSERT tHoaDonNhap (SoHDN, MaNV, NgayNhap, MaNCC) VALUES (N'HDN03', N'NV04', CAST(N'2014-01-01T00:00:00.000' AS DateTime), N'NCC06');
INSERT tHoaDonNhap (SoHDN, MaNV, NgayNhap, MaNCC) VALUES (N'HDN04', N'NV05', CAST(N'2014-03-05T00:00:00.000' AS DateTime), N'NCC04');
INSERT tHoaDonNhap (SoHDN, MaNV, NgayNhap, MaNCC) VALUES (N'HDN05', N'NV03', CAST(N'2014-04-10T00:00:00.000' AS DateTime), N'NCC05');

INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH01', N'Nguyễn Đình Sơn', N'Bắc Ninh', N'0968686868');
INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH02', N'Đỗ Văn Bắc', N'Hải Dương', N'0918273645');
INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH03', N'Mạnh Thường Quân', N'Portugal', N'0918688685');
INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH04', N'M10', N'Argentina', N'0978656790');

INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC01', N'Bách Việt');
INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC02', N'NXB Trẻ');
INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC03', N'Phú Hà book');
INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC04', N'Alphabooks');
INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC05', N'TGM Books');
INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC06', N'Thái Hà');

INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV01', N'Trần Huy', N'Nam', CAST(N'1990-09-11T00:00:00.000' AS DateTime), N'Hà Nội', N'0986868686');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV02', N'Thanh Tâm', N'Nữ', CAST(N'1986-01-12T00:00:00.000' AS DateTime), N'Bắc Ninh', N'0979657676');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV03', N'Nguyễn Minh', N'Nam', CAST(N'1989-07-05T00:00:00.000' AS DateTime), N'Hải Dương', N'0968145689');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV04', N'Phan Cao', N'Nam', CAST(N'1991-08-12T00:00:00.000' AS DateTime), N'Ninh Bình', N'0985143235');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV05', N'Bùi Ngọc', N'Nữ', CAST(N'1987-03-01T00:00:00.000' AS DateTime), N'Thái Bình', N'0918167892');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV06', N'Nguyễn Hoàng', N'Nam', CAST(N'1990-04-04T00:00:00.000' AS DateTime), N'Nam Định', N'0962091660');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV07', N'Nguyễn Hải', N'Nam', CAST(N'1994-05-05T00:00:00.000' AS DateTime), N'Hà Nội', N'0962091666');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV08', N'Đỗ Thảo', N'Nữ', CAST(N'1990-06-06T00:00:00.000' AS DateTime), N'Hà Nội', N'0962099666');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV09', N'Đỗ Thảo Phương', N'Nữ', CAST(N'1990-07-07T00:00:00.000' AS DateTime), N'Hà Nội', N'0966666666');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV10', N'Đỗ Huy Long', N'Nam', CAST(N'1995-08-08T00:00:00.000' AS DateTime), N'Nam Định', N'0983646585');

INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB01', N'NXB Kim Đồng');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB02', N'NXB Trẻ');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB03', N'NXB Thăng Long');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB04', N'NXB Nhã Nam');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB05', N'NXB Giáo Dục');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB06', N'NXB Fahasa');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB07', N'NXB Phương Nam');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB08', N'NXB ĐH GTVT');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB09', N'NXB ĐH QGHN');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB10', N'NXB Thủ Đô');

INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S01', N'Sống và khát vọng', N'Trần Đăng Khoa', N'TL01', N'NXB01', 100000.0000, 108000.0000, 120, 365, N'638 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S02', N'Cha Nên Dạy Con Như Thế Nào?', N'Vương Ba, Vương Trí Diễm', N'TL01', N'NXB04', 60000.0000, 69000.0000, 70, 264, N'440 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S03', N'Trốn chạy và yêu thương', N'Maya banks', N'TL06', N'NXB02', 105000.0000, 115000.0000, 45, 508, N'450 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S04', N'Anh sẽ yêu em mãi chứ', N'Gào', N'TL06', N'NXB05', 65000.0000, 89000.0000, 78, 320, N'374 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S05', N'Thế giới phẳng ( Tái bản năm 2014)', N'Thomas L.Friedman', N'TL05', N'NXB03', 245000.0000, 272000.0000, 56, 818, N'902 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S06', N'Giáo trình C++ & lập trình hướng đối tượng', N'GS. Phạm Văn Ất', N'TL05', N'NXB06', 64000.0000, 78000.0000, 89, 496, N'650 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S07', N'Manchester United - Thiên sử về quỷ đỏ', N'Jim White', N'TL03', N'NXB07', 135000.0000, 149000.0000, 68, 639, N'720 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S08', N'Cát bụi thời gian', N'Sidney Sheldon', N'TL04', N'NXB05', 80000.0000, 92000.0000, 45, 482, N'500 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S09', N'Tự học bảo mật và quản trị mạng', N'Mai Hương', N'TL02', N'NXB08', 41000.0000, 48000.0000, 79, 344, N'480 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S10', N'Triệu phú khởi nghiệp từ hai bàn tay trắng', N'Triệu Phàm Vũ', N'TL05', N'NXB09', 115000.0000, 130000.0000, 43, 452, N'506 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S11', N'Cấu trúc dữ liệu và giải thuật', N'Hồ Đắc Phương', N'TL02', N'NXB10', 110000.0000, 150000.0000, 80, 300, N'500 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S12', N'Lập Trình C', N'Phạm Văn Ất', N'TL02', N'NXB10', 100000.0000, 130000.0000, 80, 440, N'400 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S13', N'Không ai qua sông', N'Lữ Ngọc Tư', N'TL01', N'NXB10', 100000.0000, 140000.0000, 80, 330, N'330 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S14', N'Đón đầu xu hướng', N'Rohit Bhargava', N'TL01', N'NXB10', 200000.0000, 250000.0000, 60, 220, N'200 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S15', N'Để con được ốm', N'Nguyễn Thị Đoan', N'TL01', N'NXB10', 200000.0000, 300000.0000, 40, 400, N'500 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S16', N'Búc xúc làm ta vô cảm', N'Đặng Hoàng Giang', N'TL01', N'NXB10', 200000.0000, 300000.0000, 50, 400, N'300 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S17', N'Tony buổi sáng - trên đường băng', N'Tony Buổi Sáng', N'TL01', N'NXB09', 250000.0000, 300000.0000, 30, 300, N'400 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S18', N'Đừng bao giờ đi ăn một mình', N'Keith Ferrazzi', N'TL01', N'NXB09', 300000.0000, 400000.0000, 60, 555, N'500 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S19', N'Ngày xưa có một con bò', N'Camilo Cruz', N'TL01', N'NXB09', 300000.0000, 450000.0000, 60, 400, N'400 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S20', N'Tôi thấy hoa vàng trên cỏ xanh', N'Nguyễn nhật ánh', N'TL01', N'NXB09', 300000.0000, 400000.0000, 80, 550, N'300 gram', NULL);

INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL01', N'Bí quyết Cuộc sống');
INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL02', N'Sách Tin học');
INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL03', N'Thể Thao, Du lịch');
INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL04', N'Văn hóa, Nghệ thuật');
INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL05', N'Sách Kinh doanh');
INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL06', N'Sách Khuyến mại, Sách mới phát hành');