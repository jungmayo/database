#날짜 : 2024.07.18
#이름 : 정지현
#내용 : ERD 실습 3

insert into `Categories` values (10,'여성의류패션');
insert into `Categories` values (11,'남성의류패션');
insert into `Categories` values (12,'식품·생필품');
insert into `Categories` values (13,'취미·반려견');
insert into `Categories` values (14,'홈·문구');
insert into `Categories` values (15,'자동차·공구');
insert into `Categories` values (16,'스포츠·건강');
insert into `Categories` values (17,'컴퓨터·가전·디지털');
insert into `Categories` values (18,'여행');
insert into `Categories` values (19,'도서');

insert into `Sellers` values (10001,'(주)다팔아','02-201-1976','정우성','서울');
insert into `Sellers` values (10002,'판매의민족','02-102-1975','이정재','서울');
insert into `Sellers` values (10003,'멋남','031-103-1989','원빈','경기');
insert into `Sellers` values (10004,'스타일살아','032-201-1979','이나영','경기');
insert into `Sellers` values (10005,'(주)삼성전자','02-214-1966','장동건','서울');
insert into `Sellers` values (10006,'복실이옷짱','051-301-1979','고소영','부산');
insert into `Sellers` values (10007,'컴퓨존(주)','055-401-1984','유재석','대구');
insert into `Sellers` values (10008,'(주)LG전자','02-511-1965','강호동','서울');
insert into `Sellers` values (10009,'굿바디스포츠','070-6101-1972','조인성','부산');
insert into `Sellers` values (10010,'누리푸드','051-710-1992','강동원','부산sellers');

insert into `Users` values ('user1','김유신','1976-01-21','M','010-1101-1976','kimys@naver.com',0,1,'서울','2022-01-10 10:50:12');
insert into `Users` values ('user2','계백','1975-06-11','M','010-1101-1975',null,1000,1,'서울','2022-01-10 10:50:12');
insert into `Users` values ('user3','김춘추','1989-05-30','M','010-1103-1989',null,1200,2,'서울','2022-01-10 10:50:12');
insert into `Users` values ('user4','이사부','1979-04-13','M','010-2101-1979','leesabu@gmail.com',2600,1,'서울','2022-01-10 10:50:12');
insert into `Users` values ('user5','장보고','1966-09-12','M','010-2104-1966','jangbg@naver.com',9400,4,'대전','2022-01-10 10:50:12');
insert into `Users` values ('user6','선덕여왕','1979-07-28','M','010-3101-1979','gueen@naver.com',1600,2,'대전','2022-01-10 10:50:12');
insert into `Users` values ('user7','강감찬','1984-06-15','M','010-4101-1984','kang@daum.net',800,0,'대구','2022-01-10 10:50:12');
insert into `Users` values ('user8','신사임당','1965-10-21','M','010-5101-1965','sinsa@gmail.com',1500,1,'대구','2022-01-10 10:50:12');
insert into `Users` values ('user9','이이','1972-11-28','M','010-6101-1972','leelee@nate.com',3400,3,'부산','2022-01-10 10:50:12');
insert into `Users` values ('user10','허난설현','1992-09-07','M','010-7101-1992',null,4100,3,'광주','2022-01-10 10:50:12');

insert into `Points` values (1,'user1',1000,'회원가입 1000 적립','2022-01-10 10:50:12');
insert into `Points` values (2,'user1',6000,'상품구매 5% 적립','2022-01-10 10:50:12');
insert into `Points` values (3,'user3',2835,'상품구매 5% 적립','2022-01-10 10:50:12');
insert into `Points` values (4,'user7',3610,'상품구매 5% 적립','2022-01-10 10:50:12');
insert into `Points` values (5,'user5',3000,'이벤트 응모 3000 적립','2022-01-10 10:50:12');
insert into `Points` values (6,'user2',1000,'회원가입 1000 적립','2022-01-10 10:50:12');
insert into `Points` values (7,'user2',2000,'이벤트 응모 2000 적립','2022-01-10 10:50:12');
insert into `Points` values (8,'user2',2615,'상품구매 5% 적립','2022-01-10 10:50:12');
insert into `Points` values (9,'user3',1500,'이벤트 응모 1500 적립','2022-01-10 10:50:12');
insert into `Points` values (10,'user6',15840,'상품구매 2% 적립','2022-01-10 10:50:12');

insert into `Products` values (100101,11,10003,'반팔티 L~2XL',869,25000,132,20);
insert into `Products` values (100110,10,10004,'트레이닝 통바지',1602,38000,398,15);
insert into `Products` values (110101,10,10003,'신상 여성운동화',160,76000,40,5);
insert into `Products` values (120101,12,10010,'암소 1등급 구이세트 1.2kg',null,150000,87,15);
insert into `Products` values (120103,12,10010,'바로구이 부채살 250g',null,21000,61,10);
insert into `Products` values (130101,13,10006,'[ANF] 식스프리 강아지 사료',58,56000,142,0);
insert into `Products` values (130112,13,10006,'중대형 사계절 강아지옷',120,15000,80,0);
insert into `Products` values (141001,14,10001,'라떼 2인 소파/방수 패브릭',null,320000,42,0);
insert into `Products` values (170115,17,10007,'지포스 3080 그래픽카드',28,900000,12,12);
insert into `Products` values (160103,16,10009,'치닝디핑 33BR 철봉',32,120000,28,0);

insert into `Orders` values ('22010210001','user2',52300,'서울시 마포구 121',1,'2022-01-10 10:50:12');
insert into `Orders` values ('22010210002','user3',56700,'서울시 강남구 21-1',1,'2022-01-10 10:50:12');
insert into `Orders` values ('22010210010','user4',72200,'서울시 강서구 큰대로 38',2,'2022-01-10 10:50:12');
insert into `Orders` values ('22010310001','user5',127000,'경기도 광주시 초월로 21',1,'2022-01-10 10:50:12');
insert into `Orders` values ('22010310100','user1',120000,'경기도 수원시 120번지',0,'2022-01-10 10:50:12');
insert into `Orders` values ('22010410101','user6',792000,'부산시 남구 21-1',2,'2022-01-10 10:50:12');
insert into `Orders` values ('22010510021','user7',92200,'부산시 부산진구 56 10층',4,'2022-01-10 10:50:12');
insert into `Orders` values ('22010510027','user8',112000,'대구시 팔달로 19',3,'2022-01-10 10:50:12');
insert into `Orders` values ('22010510031','user10',792000,'대전시 한밭로 24-1',2,'2022-01-10 10:50:12');
insert into `Orders` values ('22010710110','user9',94500,'광주시 충열로 11',1,'2022-01-10 10:50:12');

insert into `orderitems` (`orderNo`,`prodNo`,`itemPrice`,`itemDiscount`,`itemCount`) values ('22010210001',100110,38000,15,1);
insert into `orderitems` (`orderNo`,`prodNo`,`itemPrice`,`itemDiscount`,`itemCount`) values ('22010210001',100101,25000,20,1);
insert into `orderitems` (`orderNo`,`prodNo`,`itemPrice`,`itemDiscount`,`itemCount`) values ('22010210002',120103,21000,10,3);
insert into `orderitems` (`orderNo`,`prodNo`,`itemPrice`,`itemDiscount`,`itemCount`) values ('22010310001',130112,15000,0,1);
insert into `orderitems` (`orderNo`,`prodNo`,`itemPrice`,`itemDiscount`,`itemCount`) values ('22010310001',130101,56000,0,2);
insert into `orderitems` (`orderNo`,`prodNo`,`itemPrice`,`itemDiscount`,`itemCount`) values ('22010210010',110101,76000,5,1);
insert into `orderitems` (`orderNo`,`prodNo`,`itemPrice`,`itemDiscount`,`itemCount`) values ('22010310100',160103,120000,0,1);
insert into `orderitems` (`orderNo`,`prodNo`,`itemPrice`,`itemDiscount`,`itemCount`) values ('22010410101',170115,900000,12,1);
insert into `orderitems` (`orderNo`,`prodNo`,`itemPrice`,`itemDiscount`,`itemCount`) values ('22010510021',110101,76000,5,1);
insert into `orderitems` (`orderNo`,`prodNo`,`itemPrice`,`itemDiscount`,`itemCount`) values ('22010510027',130101,56000,0,2);
insert into `orderitems` (`orderNo`,`prodNo`,`itemPrice`,`itemDiscount`,`itemCount`) values ('22010510021',100101,25000,20,1);
insert into `orderitems` (`orderNo`,`prodNo`,`itemPrice`,`itemDiscount`,`itemCount`) values ('22010510031',170115,900000,12,1);
insert into `orderitems` (`orderNo`,`prodNo`,`itemPrice`,`itemDiscount`,`itemCount`) values ('22010710110',120103,21000,10,5);


insert into `Carts` (`userId`,`prodNo`,`cartProdCount`,`cartProdDate`) values ('user1',100101,1,'2022-01-10 10:50:12');
insert into `Carts` (`userId`,`prodNo`,`cartProdCount`,`cartProdDate`) values ('user1',100110,2,'2022-01-10 10:50:12');
insert into `Carts` (`userId`,`prodNo`,`cartProdCount`,`cartProdDate`) values ('user3',120103,1,'2022-01-10 10:50:12');
insert into `Carts` (`userId`,`prodNo`,`cartProdCount`,`cartProdDate`) values ('user4',130112,1,'2022-01-10 10:50:12');
insert into `Carts` (`userId`,`prodNo`,`cartProdCount`,`cartProdDate`) values ('user5',130101,1,'2022-01-10 10:50:12');
insert into `Carts` (`userId`,`prodNo`,`cartProdCount`,`cartProdDate`) values ('user2',110101,3,'2022-01-10 10:50:12');
insert into `Carts` (`userId`,`prodNo`,`cartProdCount`,`cartProdDate`) values ('user2',160103,1,'2022-01-10 10:50:12');
insert into `Carts` (`userId`,`prodNo`,`cartProdCount`,`cartProdDate`) values ('user2',170115,1,'2022-01-10 10:50:12');
insert into `Carts` (`userId`,`prodNo`,`cartProdCount`,`cartProdDate`) values ('user3',110101,1,'2022-01-10 10:50:12');
insert into `Carts` (`userId`,`prodNo`,`cartProdCount`,`cartProdDate`) values ('user6',130101,1,'2022-01-10 10:50:12');

#문제1
select `userName`,`prodname`,`cartProdCount` from `carts` as a
join `users` as b using (userId)
join `products` as c using (prodNo)
where `cartProdCount` >= 2;

#문제2
select `prodNo`,`cateName`,`prodName`,`prodprice`,`sellerManager`,`sellerPhone` from products as a
join `categories` as b using(cateNo)
join `sellers` as c using(sellerNo);

#문제3
select `userid`,`username`,`userpoint`,`point`,(`userpoint`+`point`) as `적립포인트 총합` from `users` as a
join `points` as b using(userid);

#문제4
SET SESSION sql_mode = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
select `orderNo`,`userId`,`userName`,`ItemPrice`,`orderdate` from `orders` as a
join `users` using (userid)
join `orderItems` using (orderno) 
where `orderTotalPrice` >= 100000 
order by `orderTotalPrice` desc, `username` asc;

#문제5 모든 주문의 주문번호, 주문자 아이디, 고객명, 상품명, 주문일자를 조회하시오. 주문번호는 중복 없이 상품명은 구분자 ,로 나열할것
select `orderNo`,c.userId,`username`,`orderdate`,`prodName`,
group_concat(`prodName` separator ',') from `products` as a
join `orderItems` as b using (prodNo)
join `orders` as c using (orderno)
join `users` as d on c.userId = d.userId
group by `orderNo`;

#문제6 모든 상품의 상품번호, 상품명, 상품가격, 할인율, 할인된 가격을 조회하시오.
select 
		`prodNo`,
        `prodname`,
        `prodprice`,
        `prodDiscount`,
        floor(`prodPrice` * (1 - (`prodDiscount`/100))) as `할인된 가격` from `products` as a
join `orderitems` as b using (prodno); 

#문제7 고소영이 판매하는 모든 상품의 상품번호, 상품명, 상품가격, 재고수량, 판매자이름을 조회하시오. 
select `prodNo`,`prodName`,`prodprice`,`prodstock`,`sellerManager` 
from `products` as a
join `sellers` using (sellerNo) 
where `sellerManager` = '고소영';

#문제8. 아직 상품을 판매하지 않은 판매자의 판매자번호, 판매자상호, 판매자 이름, 판매자 연락처를 조회하시오.
select `sellerNo`,`sellerBizName`,`sellerManager`,`sellerPhone` from `Sellers` as a
left join `products` using(sellerNo) where `prodNo` is null;

#문제9 모든 주문상세내역 중 개별 상품 가격과 개수 그리고 할인율이 적용된 가격을 구하고 그 가격으로 주문별 총합을 구해서 주문별 총합이 10만원이상 그리고 큰 금액 순으로 `주문번호`, `최종총합`을 조회하시오. 

select `orderno` , sum(itemCount * `할인가`) as `최종총합` from
(select *, floor(`itemprice` *(1- itemdiscount/100)) as `할인가` from `orderitems`) as a
group by `orderNo`
having `최종총합` > 100000
order by `최종총합` desc;


select
	`orderNo` as `주문번호`,
	sum(`할인가` * `itemCount`) as `최종총합`
from
	(select
			*,
			 floor(`itemPrice`-(`itemPrice`*(`itemDiscount`/100))) as `할인가`
	from `OrderItems`) as a
group by `orderNo`
having `최종총합` >=100000
order by `최종총합` desc;

#문제10. 장보고 고객이 주문했던 모든 상품명을 `고객명`, `상품명`으로 조회하시오.
select `username` as `고객명` , 
		group_concat(`prodname` separator ',') as `상품명` 
from `orders` as a
JOIN `Users` AS b ON a.userId=b.userId
JOIN `OrderItems` AS c ON a.orderNo=c.orderNo
JOIN `Products` AS d ON d.prodNo=c.prodNo
where `username` = '장보고';


