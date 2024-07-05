#날짜 : 2024.07.01
#이름 : 정지현
#내용 : 2장 SQL 기본

#실습 2-1. 테이블 생성, 제거
use StudyDB;
create table `mayo`(
`uid` varchar(10),
`name` varchar(10),
`hp` char(13),
`age` int
);

drop table `mayo`;

#실습 2-2. 데이터 입력
insert into `mayo` values('A101','고등어','010-1234-1111',3);
insert into `mayo` values('A102','치즈','010-1234-2222',5);
insert into `mayo` values('A103','삼색이','010-1234-3333',7);
insert into `mayo` (`uid`, `name`, `age`) values ('A104','카오스',2);
insert into `mayo` set `uid`='A105',`name`='턱시도',`hp`='010-1234-5555';

select *from `mayo`;
select *from `mayo` where `uid`='A101';
select *from `mayo` where `name`='삼색이';
select *from `mayo` where `age`<3;
select *from `mayo` where `age`>3;
select `uid`,`name`,`age` from `mayo`;

set sql_safe_updates=0;
update `mayo` set `hp`='010-1234-4444' where `uid`='A104';
update `mayo` set `age`=2 where `uid`='A105';
update `mayo` set `hp`='010-1234-1001',`age`=9 where `uid`='A101';

alter table `mayo` add `gender` tinyint;
alter table `mayo` add `birth` char(10) after `name`;
alter table `mayo` modify `gender` char(1);
alter table `mayo` modify `age` tinyint;
alter table `mayo` drop `gender`;

create table `linga` like `mayo`;
insert into `linga` select *from `mayo`;

use Studydb;
create table `Tb1User` (`uid` varchar(10),`name` varchar(10), `hp` char(13),`age` varchar(10),`adr` varchar(100));
insert into `Tb1user` values ('p101','김유신','010-1234-1001','25','경남 김해시');
insert into `Tb1user` values ('p102','김춘추','010-1234-1002','23','경남 경주시');
insert into `Tb1user` (`uid`,`name`,`age`,`adr`) values ('p103','장보고','31','전남 완도군');
insert into `Tb1user` (`uid`,`name`,`adr`) values('p104','강감찬','서울시 중구');
insert into `Tb1user` (`uid`,`name`,`hp`,`age`) values ('p105','이순신','010-1234-1005','50');

use Studydb;
create table `product`(
	`no` varchar(10),
    `name` varchar(10),
    `price` varchar(100),
    `stock` varchar(10),
    `company` varchar(10),
    `date` char(10)
    );
    
insert into `product` values ('1001','냉장고','800,000','25','LG전자','2022-01-06');
insert into `product` values ('1002','노트북','1,200,000','120','삼성전자','2022-01-07');
insert into `product` values ('1003','모니터','350,000','35','LG전자','2023-01-13');
insert into `product` values ('1004','세탁기','1,000,000','80','삼성전자','2021-01-01');
insert into `product` values ('1005','컴퓨터','1,500,000','20','삼성전자','2023-10-01');
insert into `product` set `no`='1006',`name`='휴대폰',`price`='950,000',`stock`='102';

select *from `Tb1user`;
select `name` from `Tb1user`;
select `name`,`hp` from `Tb1user`;
select *from `Tb1user` where `uid`='p102';
select *from `Tb1user` where `uid`='p104' or `uid`='p105';
select *from `Tb1user` where `adr`='부산시 금정구';
select *from `Tb1user` where `hp` is null;
select *from `Tb1user` where `age` > 30;
update `Tb1user` set `age`='42' where `uid`='p104';
update `Tb1user` set `adr`='부산시 진구' where `uid`='p105';
delete from `Tb1user` where `uid`='p103';

select *from `product`;
select `name` from `product`;
select `name`,`company`,`price` from `product`;
select *from `product` where `company`='LG전자';
select `company` From `product`;
select *from `product` where `company`='삼성전자';
update `product` set `company`='삼성전자',`date`='2024-01-01' where `no`='1006';
    

