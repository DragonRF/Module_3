use `demo2006`;
-- select * from product where quantity >= 30 and price between 100 and 200;

-- select * from product where name like '%M%'

-- select * from customer where age > 18;

-- select * from product where name like '%M';

-- select * from product where name like '%E';

-- select * from product order by quantity asc;

-- select * from product order by quantity desc;

-- select avg(price) as 'giá trung bình' from product;

-- select sum(quantity*price) from product;

-- select max(price), name from product where name like 'M%';

--  select name, time from customer join `order` on customer.id = `order`.customerId;
 
--  select customer.name, product.name from customer join `order` on customer.id = `order`.customerId
--  join orderDetail on `order`.id = orderDetail.orderId
--  join product on orderDetail.productId = product.id;

--  select orderDetail.orderId,sum(orderDetail.quantity*product.price) as 'Gia tri hoa don'
--  from customer join `order` on customer.id = `order`.customerId
--  join orderDetail on `order`.id = orderDetail.orderId
--  join product on orderDetail.productId = product.id group by orderDetail.orderId;
 
--  select orderDetail.orderId,sum(orderDetail.quantity*product.price) as 'Gia tri hoa don'
--  from customer join `order` on customer.id = `order`.customerId
--  join orderDetail on `order`.id = orderDetail.orderId
--  join product on orderDetail.productId = product.id group by orderDetail.orderId order by orderDetail.orderId desc;


-- 1.	In ra các mã hóa đơn, trị giá hóa đơn bán ra trong ngày 19/6/2006 và ngày 20/6/2006.
 select orderDetail.orderId,sum(orderDetail.quantity* product.price) as 'giá trị hóa đơn',`order`.time as 'Time'  
from customer join `order` on customer.id = `order`.customerId 
join orderDetail on `order`.id = orderDetail.orderId 
join product on orderDetail.productId = product.id  
where `order`.time between '2006-06-19' and '2006-06-20' group by orderDetail.orderId ; 

-- 2.	In ra các mã hóa đơn, trị giá hóa đơn trong tháng 6/2006, sắp xếp theo ngày (tăng dần) và trị giá của hóa đơn (giảm dần).
select orderDetail.orderId,sum(orderDetail.quantity* product.price) as 'giá trị hóa đơn',`order`.time as 'Time'  
from customer join `order` on customer.id = `order`.customerId 
join orderDetail on `order`.id = orderDetail.orderId 
join product on orderDetail.productId = product.id  
where month(`order`.time) = '06' and year(`order`.time) = '2006'  group by orderDetail.orderId order by day(`order`.time) asc,
 sum(orderDetail.quantity* product.price) desc;

-- 3.	In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 19/06/2007.
select customer.name, product.name 
from customer join `order` on customer.id = `order`.customerId 
join orderDetail on `order`.id = orderDetail.orderId 
join product on orderDetail.productId = product.id  
where `order`.time = '2007-06-19';

-- 4.	In ra danh sách các sản phẩm (MASP, TENSP) được khách hàng có tên “Nguyen Van A” mua trong tháng 10/2006.
select product.id, product.name, `order`.time
from customer join `order` on customer.id = `order`.customerId 
join orderDetail on `order`.id = orderDetail.orderId 
join product on orderDetail.productId = product.id  
where customer.name like '%Nguyen Van A' and month(`order`.time) = '10';

-- 5.	Tìm các số hóa đơn đã mua sản phẩm “Máy giặt” hoặc “Tủ lạnh”.
select count(orderDetail.orderId)
from customer join `order` on customer.id = `order`.customerId 
join orderDetail on `order`.id = orderDetail.orderId 
join product on orderDetail.productId = product.id 
where product.name like '%Máy giặt%' or product.name like '%Tủ lạnh%' ;

-- 6.	In ra danh sách các sản phẩm (MASP, TENSP) không bán được.
select product.name from product 
where product.id not in 
(select product.id from customer join `order` on customer.id = `order`.customerId 
join orderDetail on `order`.id = orderDetail.orderId 
join product on orderDetail.productId = product.id 
);

-- 7.	In ra danh sách các sản phẩm (MASP, TENSP) không bán được trong năm 2006.
select product.id,product.name from product 
where product.id not in 
(select product.id from customer join `order` on customer.id = `order`.customerId 
join orderDetail on `order`.id = orderDetail.orderId 
join product on orderDetail.productId = product.id 
where year(`order`.time) = '2006'
);

-- 8.	In ra danh sách các sản phẩm (MASP, TENSP) có giá >300 sản xuất bán được trong năm 2006.
select product.id, product.name ,product.price
from customer join `order` on customer.id = `order`.customerId 
join orderDetail on `order`.id = orderDetail.orderId 
join product on orderDetail.productId = product.id 
where year(`order`.time) = '2006' and product.price >300;

-- 9.	Có bao nhiêu sản phẩm khác nhau được bán ra trong năm 2006.
select count(product.id) from product 
where product.id in 
(select product.id from customer join `order` on customer.id = `order`.customerId 
join orderDetail on `order`.id = orderDetail.orderId 
join product on orderDetail.productId = product.id 
where year(`order`.time) = '2006' group by product.id
);
 
-- 10.	Tìm các số hóa đơn đã mua sản phẩm “Máy giặt” hoặc “Tủ lạnh”, mỗi sản phẩm mua với số lượng từ 10 đến 20.
select orderDetail.orderId from customer join `order` on customer.id = `order`.customerId 
join orderDetail on `order`.id = orderDetail.orderId 
join product on orderDetail.productId = product.id 
where (product.name like '%Máy giặt%' or product.name like '%Tủ lạnh%') and  orderDetail.quantity >=10 and orderDetail.quantity <=20
;

-- 11.	Tìm các số hóa đơn mua cùng lúc 2 sản phẩm “Máy giặt” và “Tủ lạnh”, mỗi sản phẩm mua với số lượng từ 10 đến 20.
select orderDetail.orderId from customer join `order` on customer.id = `order`.customerId 
join orderDetail on `order`.id = orderDetail.orderId 
join product on orderDetail.productId = product.id 
where (product.name like '%Máy giặt%' and product.name like '%Tủ lạnh%') and  orderDetail.quantity >=10 and orderDetail.quantity <=20
;

-- 12.	Tìm số hóa đơn đã mua tất cả các sản phẩm có giá >200.
select count(orderDetail.orderId)
from customer join `order` on customer.id = `order`.customerId 
join orderDetail on `order`.id = orderDetail.orderId 
join product on orderDetail.productId = product.id 
where product.price >200;

-- 13.	Tìm số hóa đơn trong năm 2006 đã mua tất cả các sản phẩm có giá <300.
select count(orderDetail.orderId)
from customer join `order` on customer.id = `order`.customerId 
join orderDetail on `order`.id = orderDetail.orderId 
join product on orderDetail.productId = product.id 
where year(`order`.time) = '2006' and product.price <300;

-- 14.	Có bao nhiêu sản phẩm khác nhau được bán ra trong năm 2006.

-- 15.	Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu?

-- 16.	Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu?

-- 17.	Tính doanh thu bán hàng trong năm 2006.

-- 18.	Tìm số hóa đơn có trị giá cao nhất trong năm 2006.

-- 19.	Tìm họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2006.

-- 20.	In ra danh sách 3 khách hàng (MAKH, HOTEN) mua nhiều hàng nhất (tính theo số lượng).

-- 21.	In ra danh sách các sản phẩm (MASP, TENSP) có giá bán bằng 1 trong 3 mức giá cao nhất.

-- 22.	In ra danh sách các sản phẩm (MASP, TENSP) có tên bắt đầu bằng chữ M, có giá bằng 1 trong 3 mức giá cao nhất (của tất cả các sản phẩm).

-- 23.	Tính doanh thu bán hàng mỗi ngày.

-- 24.	Tính tổng số lượng của từng sản phẩm bán ra trong tháng 10/2006.

-- 25.	Tính doanh thu bán hàng của từng tháng trong năm 2006.

-- 26.	Tìm hóa đơn có mua ít nhất 4 sản phẩm khác nhau.
select orderDetail.orderId from customer join `order` on customer.id = `order`.customerId 
join orderDetail on `order`.id = orderDetail.orderId 
join product on orderDetail.productId = product.id 
where (product.name like '%Máy giặt%' 
and product.name like '%Tủ lạnh%' 
and product.name like '%Tivi Samsung%' 
and product.name like '%Điều hoà Panasonic%' );

-- 27.	Tìm hóa đơn có mua 3 sản phẩm có giá <300 (3 sản phẩm khác nhau).

-- 28.	Tìm khách hàng (MAKH, HOTEN) có số lần mua hàng nhiều nhất.

-- 29.	Tháng mấy trong năm 2006, doanh số bán hàng cao nhất?

-- 30.	Tìm sản phẩm (MASP, TENSP) có tổng số lượng bán ra thấp nhất trong năm 2006.

-- 31.	Trong 10 khách hàng có doanh số cao nhất, tìm khách hàng có số lần mua hàng nhiều nhất.
