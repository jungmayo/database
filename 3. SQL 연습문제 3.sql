# 날짜 : 2024.07.10
# 이름 : 정지현
# SQL 연습문제 3

create database `college`;
create user 'college'@'%' identified by '1234';
grant all privileges on college.* to 'college'@'%';
flush privileges;

# 실습 3-2
create table `student`(
`stdno` char(8) primary key,
`stdname` varchar(20) not null,
`stdhp` char(13) unique not null,
`stdyear` int not null,
`stdaddress` varchar(100) 
);

create table `lecture`(
`lecno` int primary key,
`lecname` varchar(20) not null,
`leccredit` int not null,
`lectime` int not null,
`lecclass` varchar(10) 
);

create table `register`(
`regstdno` char(8),
`reglecno` int,
`regmidscore` int,
`regfinalscore` int,
`regtotalscore` int,
`reggrade` char(1) 
);

# 실습 3-3
insert into `student`( `stdno`,`stdname`,`stdhp`,`stdyear`) values ('20201016','김유신','010-1234-1001',3);
insert into `student` values ('20201126','김춘추','010-1234-1002',3,'경상남도 경주시');
insert into `student` values ('20210216','장보고','010-1234-1003',2,'전라남도 완주시');
insert into `student` values ('20210326','강감찬','010-1234-1004',2,'서울시 영등포구');
insert into `student` values ('20220416','이순신','010-1234-1005',1,'부산시 부산진구');
insert into `student` values ('20220521','송상현','010-1234-1006',1,'부산시 동래구');

insert into `lecture` values (159,'인지행동심리학',3,40,'본304');
insert into `lecture` values (167,'운영체제론',3,25,'본B05');
insert into `lecture` values (234,'중급 영문법',3,20,'본201');
insert into `lecture` values (239,'세법개론',3,40,'본204');
insert into `lecture` values (248,'빅데이터 개론',3,20,'본B01');
insert into `lecture` values (253,'컴퓨팅사고와 코딩',2,10,'본B02');
insert into `lecture` values (349,'사회복지 마케팅',2,50,'본301');

INSERT INTO `register` (`regstdno`, `reglecno`) VALUES ('20201126', 234);
INSERT INTO `register` (`regstdno`, `reglecno`) VALUES ('20201016', 248);
INSERT INTO `register` (`regstdno`, `reglecno`) VALUES ('20201016', 253);
INSERT INTO `register` (`regstdno`, `reglecno`) VALUES ('20201126', 239);
INSERT INTO `register` (`regstdno`, `reglecno`) VALUES ('20210216', 349);
INSERT INTO `register` (`regstdno`, `reglecno`) VALUES ('20210326', 349);
INSERT INTO `register` (`regstdno`, `reglecno`) VALUES ('20201016', 167);
INSERT INTO `register` (`regstdno`, `reglecno`) VALUES ('20220416', 349);

# 실습 3-4
select * from `lecture`;
# 실습 3-4
select * from `student`;
# 실습 3-5
select * from `register`;
# 실습 3-6
select * from `student` where `stdyear` = 3;
# 실습 3-7
select * from `lecture` where `leccredit` = 2;

# 실습 3-9
SET SQL_SAFE_UPDATES = 0;
update `register` set `regmidscore`=36, `regfinalscore`=42 where `regstdno`='20201126' and `reglecno`=234;
update `register` set `regmidscore`=24, `regfinalscore`=62 where `regstdno`='20201016' and `reglecno`=248;
update `register` set `regmidscore`=28, `regfinalscore`=40 where `regstdno`='20201016' and `reglecno`=253;
update `register` set `regmidscore`=37, `regfinalscore`=57 where `regstdno`='20201126' and `reglecno`=239;
update `register` set `regmidscore`=28, `regfinalscore`=68 where `regstdno`='20210216' and `reglecno`=349;
update `register` set `regmidscore`=16, `regfinalscore`=65 where `regstdno`='20210326' and `reglecno`=349;
update `register` set `regmidscore`=18, `regfinalscore`=38 where `regstdno`='20201016' and `reglecno`=167;
update `register` set `regmidscore`=25, `regfinalscore`=58 where `regstdno`='20220416' and `reglecno`=349;
 select * from `register`;

# 실습 3-10
update `register` set 
`regtotalscore` =`regmidscore`+`regfinalscore`,
`reggrade` = if(`regtotalscore` >= 90, 'A',
if(`regtotalscore` >= 80, 'B',
if(`regtotalscore` >= 70, 'C',
if(`regtotalscore` >= 60, 'D','F'))));
select *from `register`;

# 실습 3-11
select * from `register` order by `regtotalscore` desc;
# 실습 3-12
select * from `register` where `reglecno` = 349 order by `regtotalscore` desc;
# 실습 3-13
select * from `lecture` where `lectime` >= 30;
# 실습 3-14
select `lecname`,`lecclass` from `lecture`;
# 실습 3-15
select `stdno`,`stdname` from `student`;
# 실습 3-16
select * from `student` where `stdaddress` is null;
# 실습 3-17
select * from `student` where `stdaddress` like '부산%';

# 실습 3-18
select * from `student` as a
left join `register` as b
on a.stdno = b.regstdno;

# 실습 3-19
select `stdno`,`stdname`,`reglecno`,`regmidscore`,`regfinalscore`,`regtotalscore`,`reggrade`
from `student` as a, `register` as b where a.stdno = b.regstdno  order by `stdno` asc;

# 실습 3-20
select `stdname`,`stdno`,`reglecno` from `student` as a
join `register` as b
on a.stdno=b.regstdno
where `reglecno` = 349;

# 실습 3-21
SET SESSION sql_mode = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
select 
`stdno`,
`stdname`,
count(`stdno`) as '수강신청 건수',
sum(`regtotalscore`) as '종합점수',
sum(`regtotalscore`) / count(`stdno`) as `평균`
from `student` as a
join `register` as b
on a.stdno=b.regstdno
group by `stdno`
order by `stdno` asc;

# 실습 3-22
select * from `register` as a
join `lecture` as b
on a.reglecno=b.lecno;

# 실습 3-23
select
`regstdno`,
`reglecno`,
`lecname`,
`regmidscore`,
`regfinalscore`,
`regtotalscore`,
`reggrade`
from `lecture` as a, `register` as b where a.lecno = b.reglecno ;

# 실습 3-24
select count(*) as `사회복지 마케팅 수강 신청건수`,
avg(`regtotalscore`) as `사회복지 마케팅 평균`
from `register` as a join `lecture` as b on a.reglecno=b.lecno  where `lecname` = '사회복지 마케팅';

# 실습 3-25
select `regstdno`,
`lecname`
from `register` as a join `lecture` as b on a.reglecno=b.lecno where `reggrade` = 'A';

# 실습 3-26
select * from `student` as a
join `register` as b
on a.stdno=b.regstdno
join `lecture` as c
on b.reglecno = c.lecno order by `stdhp` asc;

# 실습 3-27
select 
`stdno`,
`stdname`,
`lecno`,
`lecname`,
`regmidscore`,
`regfinalscore`,
`regtotalscore`,
`reggrade`
from `student` as a
join `register` as b on a.stdno=b.regstdno
join `lecture` as c on b.reglecno = c.lecno order by `regtotalscore` desc;

# 실습 3-28
select
`stdno`,
`stdname`,
`lecname`,
`regtotalscore`,
`reggrade`
from `student` as a
join `register` as b on a.stdno=b.regstdno
join `lecture` as c on b.reglecno = c.lecno where `reggrade` = 'F';

# 실습 3-29
SET SESSION sql_mode = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
select
`stdno`,
`stdname`,
sum(`leccredit`)as `이수학점`
from `student` as a
join `register` as b on a.stdno=b.regstdno
join `lecture` as c on b.reglecno = c.lecno 
where `reggrade` <> 'F'
group by `stdname`;

# 실습 3-30
select `stdno`,
`stdname`,
group_concat(`lecname`) as `신청과목`,
group_concat(if(`regtotalscore` >= 60, `lecname`, null)) as `이수과목`
from `student` as a
join `register` as b on a.stdno=b.regstdno
join `lecture` as c on b.reglecno = c.lecno 
group by `stdno`;

