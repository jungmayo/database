#날짜 : 2024.07.12
#이름 : 정지현
#내용 : SQL 연습문제 5

create database `Boolstore`;
create user 'bookstore'@'%' identified by '1234';
grant all privileges on `Bookstore`.* to 'bookstore'@'%';
flush privileges;



#실습 5-1
#실습 5-2

create table `Customer` (
`custId` int primary key auto_increment,
`name` varchar(10) not null,
`address` varchar(20),
`phone` char(13)
);

create table `Book` (
`bookId` int primary key,
`bookname` varchar(20) not null,
`publisher` varchar(20) not null,
`price` int
);

create table `Order` (
`orderId` int primary key auto_increment,
`custId` int not null, 
`BookId` int not null,
`salePrice` int not null,
`orderDate` date not null
);

#실습 5-3
insert into `Customer` (`name`,`address`,`phone`) values ('박지성','영국 맨체스타','000-5000-0001');
insert into `Customer` (`name`,`address`,`phone`) values ('김연아','대한민국 서울','000-6000-0001');
insert into `Customer` (`name`,`address`,`phone`) values ('장미란','대한민국 강원도','000-7000-0001');
insert into `Customer` (`name`,`address`,`phone`) values ('추신수','미국 클래블랜드','000-8000-0001');
insert into `Customer` (`name`,`address`) values ('박세리','대한민국 대전');

insert into `Book` values (1,'축구의 역사','굿스포츠',7000);
insert into `Book` values (2,'축구아는 여자','나무수',13000);
insert into `Book` values (3,'축구의 이해','대한미디어',22000);
insert into `Book` values (4,'골프 바이블','대한미디어',35000);
insert into `Book` values (5,'피겨 교본','굿스포츠',8000);
insert into `Book` values (6,'역도 단계별 기술','굿스포츠',6000);
insert into `Book` values (7,'야구의 추억','이상미디어',20000);
insert into `Book` values (8,'야구를 부탁해','이상미디어',13000);
insert into `Book` values (9,'올림픽 이야기','삼성당',7500);
insert into `Book` values (10,'Olympic Champions','pearson',13000);

insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (1,1,6000,'2014-07-01');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (1,3,21000,'2014-07-03');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (2,5,8000,'2014-07-03');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (3,6,6000,'2014-07-04');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (4,7,20000,'2014-07-05');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (1,2,12000,'2014-07-07');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (4,8,13000,'2014-07-07');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (3,10,12000,'2014-07-08');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (2,10,7000,'2014-07-09');
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (3,8,13000,'2014-07-10');

#실습 5-4
select `custId`,`name`,`address` from `Customer`;

#실습 5-5
select `bookname`,`price` from `Book`;

#실습 5-6
select `price`,`bookname` from `Book`;

#실습 5-7
select * from `Book`;

#실습 5-8
select `publisher` from `Book`;

#실습 5-9
select `publisher` from `Book` group by `publisher`;

#실습 5-10
select * from `Book` where `price` >= 20000;

#실습 5-11
select *from `Book` where `price` <= 20000;

#실습 5-12
select * from `Book` where `price` >=10000 and `price` <=20000;

#실습 5-13
select `bookId`,`bookname`,`price` from `Book` where `price` >=15000 and `price` <=30000;

#실습 5-14
select * from `Book` where `bookId` in(2,3,5);

#실습 5-15
select * from `Book` where MOD(bookId, 2) = 0;
select * from `Book` where `bookid` % 2 = 0;

#실습 5-16
select * from `Customer` where `name` like '박%';

#실습 5-17
select * from `Customer` where `address` like '대한민국%';

#실습 5-18
select * from `Customer` where `phone` is not null;

#실습 5-19
select * from `Book` where `publisher` in('굿스포츠','대한미디어');

#실습 5-20
select `publisher` from `Book` where `bookname` = '축구의 역사';

#실습 5-21
select `publisher` from `Book` where `bookname` like '%축구%';

#실습 5-22
select * from `Book` where `bookname` like '_구%';

#실습 5-23
select * from `Book` where `price` > 20000 and `bookname` like '%축구%';

#실습 5-24
select * from `Book` order by `bookname` asc;

#실습 5-25
select * from `Book` order by `price`,`bookname` asc;

#실습 5-26
select * from `Book` order by `price` DESC, `publisher` asc;

#실습 5-27
select * from `Book` order by `price` DESC limit 3;

#실습 5-28
select * from `Book` order by `price` asc limit 3;

#실습 5-29
select sum(`saleprice`) as `총판매액` from `Order`;

#실습 5-30
select 
	sum(`saleprice`) as `총판매액` , 
	avg(saleprice) as `평균값` , 
	Max(`saleprice`) as `최고가` , 
	Min(`saleprice`) as `최저가` 
from `Order`;

#실습 5-31
select count(*) as `판매건수` from `Order`;

#실습 5-32
select  
	`bookId`, 
	replace(bookname, '야구', '농구') as `bookname`,
    `publisher`,
    `price` 
from `Book`;


#실습 5-33
select 
		`custId`,
		count(*) as `수량` 
From `Order` 
where `salePrice` >= 8000
group by `custId` 
having `수량` >=2;

#실습 5-34
select * from `Customer` as a
join `Order` as b
on a.custId = b.custId;

select * from `customer` a , `order` b where a.custId = b.custId;

#실습 5-35
select * from `Customer` as a
join `Order` as b
on a.custId = b.custId
order by a.custId asc;

#실습 5-36
select  `name`,
		`saleprice` 
from `Customer` as a
join `Order` as b
on a.custId = b.custId;

#실습 5-37
select `name`,
		sum(`saleprice`) 
from `Customer` as a
join `Order` as b
on a.custId = b.custId
group by `name`
order by `name`;

#실습 5-38
select  
		`name`,
		`bookname` 
from `Book` as a
join `Order` as b
on a.bookId = b.bookId
join `Customer` as c
on b.custId = c.custId;

#실습 5-39
select 
	`name`,
	`bookname` 
from `Book` as a
join `Order` as b
on a.bookId = b.bookId
join `Customer` as c
on b.custId = c.custId where `price` = 20000;

#실습 5-40
select 
	`name`,
	`saleprice` 
from `Customer` as a
left join `Order` as b
on a.custId = b.custId;

#실습 5-41
select sum(`saleprice`) as `총매출` from `Order` as a
join `Customer` as b
on a.custId = b.custId where `name` = '김연아';

select sum(`saleprice`) as `총매출` from `Order`
where `custId`=(select `custId` From `Customer` where `name`='김연아');

#실습 5-42
select `bookname` from `Book` order by `price` desc limit 1;
select `bookname` from `Book` where `price` = (select Max(`price`) from `Book`);

#실습 5-43
select `name` From `customer`as a
left join `order` as b
on a.custId = b.custId 
where `saleprice` is null;

#실습 5-44
insert into `Book` (`bookid`,`bookname`,`publisher`) values (11,'스포츠 의학','한솔의학서적');
insert into `Book` set `bookid` = 11, `bookname` = '스포치의학', `publisher` = '한솔의학서적';

#실습 5-45
update `Customer` set `address` = '대한민국 부산' where `custId` = 5;
select * from `Customer`;

#실습 5-45
delete from `Customer` where `custId` = 6;
select *from `Customer`;
