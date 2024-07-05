#날짜 : 2024.07.03
#이름 : 정지현
#내용 : 4장 SQL 고급

#실습 4-1
create table `member` (
`uid`   varchar(10) primary key,
`name`  varchar(10)not null,
`hp`	char(13) unique not null,
`pos` 	varchar(10) default '사원' not null,
`dep` 	tinyint,
`rdate` datetime not null
);
create table `department` (
`depNo` tinyint primary key,
`name` 	varchar(10) not null,
`tel` 	varchar(12) not null
);
create table `sales` (
`seq` 	int primary key auto_increment,
`uid` 	varchar(10) not null,
`year`	year not null,
`month` tinyint not null,
`sale`  int
);

#실습 4-2
insert into `member` values ('a101','박혁거세','010-1234-1001','부장','101','2020-11-19 11:39:48');
insert into `member` values ('a102','김유신','010-1234-1002','차장','101','2020-11-19 11:39:48');

insert into `member` (`uid`,`name`,`hp`,`dep`,`rdate`) values ('a103','김춘추','010-1234-1003','101','2020-11-19 11:39:48');

insert into `member` values ('a104','장보고','010-1234-1004','대리','102','2020-11-19 11:39:48');
insert into `member` values ('a105','강감찬','010-1234-1005','과장','102','2020-11-19 11:39:48');
insert into `member` values ('a106','이성계','010-1234-1006','차장','103','2020-11-19 11:39:48');

insert into `member` values ('a107','정철','010-1234-1007','차장','103','2020-11-19 11:39:48');
insert into `member` values ('a108','이순신','010-1234-1008','부장','104','2020-11-19 11:39:48');
insert into `member` values ('a109','허균','010-1234-1009','부장','104','2020-11-19 11:39:48');

insert into `member` (`uid`,`name`,`hp`,`dep`,`rdate`) values ('a110','정약용','010-1234-1010','105','2020-11-19 11:39:48');
insert into `member` (`uid`,`name`,`hp`,`dep`,`rdate`) values ('a111','박지원','010-1234-1011','105','2020-11-19 11:39:48');

insert into `department` values ('101', '영업1부',  '051-512-1001');
insert into `department` values ('102', '영업2부',  '051-512-1002');
insert into `department` values ('103', '영업3부',  '051-512-1003');
insert into `department` values ('104', '영업4부',  '051-512-1004');
insert into `department` values ('105', '영업5부',  '051-512-1005');
insert into `department` values ('106', '영업지원부','051-512-1006');
insert into `department` values ('107', '인사부',   '051-512-1007');

insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a101', '2018', '1',  '98100');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a102', '2018', '1', '136000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a103', '2018', '1',  '80100');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a104', '2018', '1',  '78000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a105', '2018', '1',  '93000');

insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a101', '2018', '2',  '23500');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a102', '2018', '2', '126000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a103', '2018', '2',  '18500');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a105', '2018', '2',  '19000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a106', '2018', '2',  '53000');

insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a101', '2019', '1',  '24000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a102', '2019', '1', '109000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a103', '2019', '1', '101000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a104', '2019', '1',  '53500');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a107', '2019', '1',  '24000');

insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a102', '2019', '2', '160000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a103', '2019', '2', '101000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a104', '2019', '2',  '43000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a105', '2019', '2',  '24000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a106', '2019', '2', '109000');

insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a102', '2020', '1', '201000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a104', '2020', '1',  '63000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a105', '2020', '1',  '74000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a106', '2020', '1', '122000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a107', '2020', '1', '111000');

insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a102', '2020', '2', '120000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a103', '2020', '2',  '93000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a104', '2020', '2',  '84000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a105', '2020', '2', '180000');
insert into `sales` (`uid`,`year`,`month`,`sale`) values ('a108', '2020', '2',  '76000');

#실습 4-3
select *from `member` where `name`='김유신';
select *from `member` where `pos` = '차장' and `dep`=101;
select *from `member` where `pos` = '차장' or `dep`=101;
select *from `member` where `name` <> '김춘추';
select *from `member` where `pos` in ('사원','대리'); #or와 동일 #괄호로 묶기
select *from `member` where `name` like '%신'; #이름이 신으로 끝나는 직원 조회
select *from `member` where `name` like '정_';
select *from `member` where `name` like '김%';
select *from `member` where `dep` in (101,102,103);
select *from `member` where `name` like '_성_';
select *from `sales` where `sale` > 50000;
select *from `sales` where `sale` >= 50000 and `sale` < 100000 and `month`=1; #모든조건에 일치하는 값 출력
select *from `sales` where `sale` between 50000 and 100000;
select *from `sales` where `sale` not between 50000 and 100000;
select *from `sales` where `year` in(2020);
select *from `sales` where `month` in(1,2);

#실습 4-4
select *from `sales` order by `sale`; #select *from `sales`만 출력하면 기본키값으로 정렬됨 / 뒤에 ASC가 생략되어있음
select *from `sales` order by `sale` asc;
select *from `sales` order by `sale` desc;
select * from `sales` 
where `sale` > 50000
order by `year` desc ,`month` desc ,`sale` asc; #year과 month는 내림차순, sale은 오름차순으로 표기됨
#실습 4-5
select *from `sales` limit 3;
select *from `sales` limit 0,3; #0은 인덱스, 3은 사이즈
select *from `sales` limit 1,2;
select *from `sales` limit 5,3;
select *from `sales` order by `sale` desc limit 3,5;
select *from `sales` where `sale` < 50000 order by `sale` desc limit 3;
select *from `sales`
where `sale` > 50000
order by `year`,`month`,`sale` desc;

#실습 4-6
select sum(`sale`) as `합계` from `sales`;
select count(*) as `갯수` from `sales`; # 모든 데이터의 갯수
select concat('hello','world') as `결과`;
select concat(`uid`,`name`,`hp`) from `member` where `uid`='a108';
select now();
insert into `member` values ('a112','유관순','010-1234-1012','대리','107',now());
select *from `member`;

#실습 4-7
# 2018년 1월 매출의 총합
select sum(`sale`) as `2018년 1월 매출의 총합` 
from `sales` where `year` = 2018 and `month` = 1;

#실습 4-8
#2월달 5만원 이상 평균
select sum(`sale`) as `총합`, avg(`sale`) as `평균` 
from `sales` where `sale` >=50000 and `year` in (2019) and `month` in(2);

#2020년 전체 매출 가운데 최저, 최고 매출
select *from `sales` where `year` in (2020) order by `sale` desc limit 1;
select *from `sales` where `year` in (2020) order by `sale` asc limit 1;

#실습 4-9
#2020년 전체 매출 가운데 최저, 최고 매출
select
	min(`sale`) as `최저매출`,
    max(`sale`) as `최고매출`
from `sales` where `year`=2020;

#실습 4-10

SET SESSION sql_mode = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
select *from `sales` group by `uid`;
select *from `sales` group by `uid`,`year`; # 2018년도 A101 + 2019년도 A101 + ...
select `uid`, sum(`sale`) as `합계` from `sales` group by `uid`; #a101의 모든 매출을 합침 ...
select `uid`, count(*) as `건수` from `sales` group by `uid`;
select `uid`, avg(`sale`) as`평균` from `sales` group by `uid`;

select `uid`,`year`, sum(`sale`) as `합계`
from `sales`
group by `uid`,`year`;

select `uid`,`year`, sum(`sale`) as `합계`
from `sales`
group by `uid`,`year`
order by `year` asc, `합계` desc;

select `uid`,`year`, sum(`sale`) as `합계`
from `sales`
where `sale` >=50000
group by `uid`,`year`
order by `합계` desc;

#실습 4-11
select `uid`, sum(`sale`) as `합계` from `sales`
group by `uid`
having `합계` >= 200000;

select `uid`,`year`, sum(`sale`) as `합계`
from `sales`
where `sale` >= 100000
group by `uid` , `year`
having `합계` >= 200000 #그룹화된 uid year의 합계가 20만원 이상인 것만
order by `합계` desc;

#실습 4-12
create table `sales2` like `sales`; # 테이블 복사
insert into `sales2` select * from `sales`; # 데이터 복사

set sql_safe_updates=0;
update `sales2` set `year` = `year` + 3;

select * from `sales` where `sale` >= 100000
union
select * from `sales2` where `sale` >= 100000;

select `uid`,`year`,`sale` from `sales`
union
select `uid`,`year`,`sale` from `sales2`;

select `uid`,`year`, sum(`sale`) as `합계`
from `sales`
group by `uid`,`year`
union
select `uid`,`year`, sum(`sale`) as `합계`
from `sales2`
group by `uid`,`year`
order by `year` asc, `합계` asc;

#실습 4-13
select * from `sales` inner join `member` on `sales`.`uid` = `member`.`uid`; #세일즈의 id와 멤버의 id를 조인 왼쪽이 기준테이블

select * from `sales` as a 
join `member` as b
on a.uid = b.uid;

select * from `member` as a
join `department` as b
on a.dep = b.depno;

select 
	a.`seq`,
    b.`uid`,
    a.`sale`,
    b.`name`,
    b.`pos`
from `sales` as a
join `member` as b
using (`uid`);

select * from `sales` as a
join `member` as b
on a.uid = b.uid;

select * from `member` as a
join `department` as b
on a.dep=b.depno;

select * from `sales` as a, `member` as b
where a.uid = b.uid;
select * from `member` as a, `department` as b
where a.dep = b.depno;

select a.`seq`, a.`uid`,`sale`,`name`,`pos` from `sales` as a
join `member` as b
on a.`uid`=b.`uid`;

select a.`seq`, a.`uid`,`sale`,`name`,`pos` from `sales` as a
join `member` as b using (uid);

select a.`seq`,a.`uid`,`sale`,`name`,`pos` 
from `sales` as a
join `member` as b 
on a.uid=b.uid
where `sale` >= 100000;

select a.`seq`,a.`uid`,b.`name`,b.`pos`,`year`, sum(`sale`) as `합계` from `sales` as a
join `member` as b
on a.uid = b.uid
group by a.`uid`,a.`year` having `합계` >= 100000
order by a.`year` asc, `합계` desc;

select * from `sales` as a
join `member` as b on a.uid = b.uid
join `department` as c on b.dep = c.depno;

select a.`seq`,a.`uid`,a.`sale`,b.`name`,b.`pos`,c.`name` from `sales` as a
join `member` as b on a.uid=b.uid
join `department` as c on b.dep=c.depno
where `sale` > 100000
order by `sale` desc;

#실습 4-14
select * from `sales` as a 
left join `member` as b
on a.uid = b.uid;

select * from `sales` as a 
right join `member` as b # 오른쪽 테이블을 기준으로 잡음 . 오른쪽 테이블 모두에 왼쪽테이블을 조인한 것 / 기본은 inner 조인 / 외부조인은 결합하는 테이블의 한쪽의 모든 튜플 조회
on a.uid = b.uid;

select a.seq, a.uid, `sale`, `name`, `pos` from sales as a
left join member as b using(uid);

select a.seq, a.uid, `sale`, `name`,`pos` from sales as a
right join member as b using(uid);

#실습 4-15 모든 직원의 아이디, 이름, 직급, 부서명을 조회하시오.

select 
	`uid`,
    a.`name` as `직원명`,
    `pos`,
    b.`name` as `부서명`
from `member` as a
join `department` as b
on a.dep = b.depno;


#실습 4-16

select 
	a.`uid`,
    `name`,
	sum(`sale`) as `2019년도 매출합`
from `sales` as a
join `member` as b
on a.uid = b.uid
where `year`=2019 and 
	  `name`='김유신';

#실습 4-17

select  
	b.`name` as 직원명,
    c.`name` as 부서명,
    `pos`,
    `year`,
    sum(`sale`) as `합계`
from `sales` as a
join `member` as b on a.uid = b.uid
join `department` as c on b.dep = c.depno
where `year` = 2019 and `sale` >= 50000
group by a.`uid`
having `합계` >= 100000
order by `합계` desc;

select * from `sales` group by `uid`;
select * from `sales` group by `year`;
select * from `sales` group by `uid`,`year`;
select `uid`, sum(`sale`) as `합계` from `sales` group by `uid`; # uid로 묶어놓은 sales에서 sale의 합계와 uid를 표시
select `uid`,`year`,
		sum(`sale`) as `합계`
		from `sales`
        group by `uid`,`year`;
        
select * from `sales` as a
join `member` as b
on a.uid = b.uid;

select a.`seq`,a.`uid`,`sale`,`name`,`pos` from `sales` as a
join `member` as b
on a.`uid` = b.`uid`
where `sale` >= 100000;

select a.`seq`,a.`uid`,b.`name`,`pos`,`year`,
sum(`sale`) as `합계`
from `sales` as a
join `member` as b
on a.uid = b.uid
group by a.`uid`, a.`year`
having `합계` >= 100000;


select sum(`sale`) as `2018년 1월 매출 총합`
from `sales` where `year`=2018 and `month`=1;

select  `uid`,
		a.`name` as `이름`,
        `pos`,
        b.`name` as `부서명`
from `member` as a
join `department` as b
on a.dep = b.depno;

select 
	a.`uid`,
    `name`,
	sum(`sale`) as `합계`
from `sales` as a
join `member` as b
on a.uid = b.uid
where `year` = 2019 and `name` = '김유신';


select 
b.`name` as `이름`,
c.`name` as `부서명`,
`pos`,
`year`,
sum(`sale`) as `합계`
from `sales` as a
join `member` as b on a.uid = b.uid
join `department` as c on b.dep = c.depno
where `year` =2019 and `sale` >=50000
group by a.uid
having `합계` >=100000;



# select from group by having 순서로 문법