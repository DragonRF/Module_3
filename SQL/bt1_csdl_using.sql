use BT1_CSDL;

-- select * from tsach where TenSach like '%L%' or SoLuong = 80;

select * from tsach join tnhaxuatban on tsach.MaNXB = tnhaxuatban.MaNXB
where TenNXB = N'NXB Giáo dục';