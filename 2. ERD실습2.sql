#날짜 : 2024.07.17
#이름 : 정지현
#내용 : ERD 실습2

insert into `Departments` values ('101','소아과','김유신','051-123-0101');
insert into `Departments` values ('102','내과','김춘추','051-123-0102');
insert into `Departments` values ('103','외과','장보고','051-123-0103');
insert into `Departments` values ('104','피부과','선덕여왕','051-123-0104');
insert into `Departments` values ('105','이비인후과','강감찬','051-123-0105');
insert into `Departments` values ('106','산부인과','신사임당','051-123-0106');
insert into `Departments` values ('107','흉부외과','류성롱','051-123-0107');
insert into `Departments` values ('108','정형외과','송상현','051-123-0108');
insert into `Departments` values ('109','신경외과','이순신','051-123-0109');
insert into `Departments` values ('110','비뇨기과','정약용','051-123-0110');
insert into `Departments` values ('111','안과','박지원','051-123-0111');
insert into `Departments` values ('112','치과','전봉준','051-123-0112');

insert into `Doctors` values ('D101101','김유신','1976-01-21','M','101','과장','010-1101-1976','kimys@bw.com');
insert into `Doctors` values ('D101102','계백','1975-06-11','M','101','전문의','010-1102-1975','gaeback@bw.com');
insert into `Doctors` values ('D101103','김관창','1989-05-30','M','101','전문의','010-1103-1989','kwanch@bw.com');
insert into `Doctors` values ('D102101','김춘추','1979-04-13','M','102','과장','010-2101-1979','kimcc@bw.com');
insert into `Doctors` values ('D102104','이사부','1966-09-12','M','102','전문의','010-2104-1966','leesabu@bw.com');
insert into `Doctors` values ('D103101','장보고','1979-07-28','M','103','과장','010-3101-1979','jangbg@bw.com');
insert into `Doctors` values ('D104101','선덕여왕','1984-06-15','F','104','과장','010-4101-1984','gueen@bw.com');
insert into `Doctors` values ('D105101','강감찬','1965-10-21','M','105','과장','010-5101-1965','kang@bw.com');
insert into `Doctors` values ('D106101','신사임당','1972-11-28','F','106','과장','010-6101-1972','sinsa@bw.com');
insert into `Doctors` values ('D107103','이이','1992-09-07','M','107','전문의','010-7103-1992','leelee@bw.com');
insert into `Doctors` values ('D107104','이황','1989-12-09','M','107','전문의','010-7104-1989','hwang@bw.com');
insert into `Doctors` values ('D108101','송상현','1977-03-14','M','108','과장','010-8101-1977','ssh@bw.com');

insert into `nurses` values ('N101101','송승헌','1976-02-21','M','101','수간호사','010-1101-7602','ssh@bw.com');
insert into `nurses` values ('N102101','이영애','1975-07-11','F','102','수간호사','010-1102-7507','yung@bw.com');
insert into `nurses` values ('N102102','엄정화','1989-06-30','F','102','주임','010-1103-8906','um@bw.com');
insert into `nurses` values ('N102103','박명수','1979-05-13','M','102','주임','010-2101-7905','park@bw.com');
insert into `nurses` values ('N103101','정준하','1966-10-12','M','103','주임','010-2104-6610','jung@bw.com');
insert into `nurses` values ('N104101','김태희','1979-08-28','F','104','주임','010-3101-7908','taeh@bw.com');
insert into `nurses` values ('N105101','송혜교','1984-07-15','F','105','주임','010-4101-8407','song@bw.com');
insert into `nurses` values ('N106101','공유','1965-11-21','M','106','간호사','010-5101-6511','gong@bw.com');
insert into `nurses` values ('N107101','이병헌','1972-12-28','M','107','간호사','010-6101-7212','byung@bw.com');
insert into `nurses` values ('N108101','송중기','1992-10-07','M','108','간호사','010-7103-9210','jungi@bw.com');

insert into `Patients` values ('P102101','D102101','N102101','정우성','760121-1234567','M','서울','010-1101-7601',null,'배우');
insert into `Patients` values ('P103101','D103101','N103101','이정재','750611-1234567','M','서울','010-1102-7506',null,'배우');
insert into `Patients` values ('P102102','D102104','N102103','전지현','890530-1234567','F','대전','010-1103-8905','jjh@naver.com','자영업');
insert into `Patients` values ('P104101','D104101','N104101','이나영','790413-1234567','F','대전','010-2101-7904','lee@naver.com','회사원');
insert into `Patients` values ('P105101','D105101','N105101','원빈','660912-1234567','M','대전','010-2101-6609','one@daum.net','배우');
insert into `Patients` values ('P103102','D103101','N103101','장동건','790728-1234567','M','대구','010-3101-7907','jang@naver.com','배우');
insert into `Patients` values ('P104102','D104101','N104101','고소영','840615-1234567','F','대구','010-4101-8406','goso@daum.net','회사원');
insert into `Patients` values ('P108101','D108101','N108101','김연아','651021-1234567','F','대구','010-5101-6510','yuna@daum.net','운동선수');
insert into `Patients` values ('P102103','D102104','N102102','유재석','721128-1234567','M','부산','010-6101-7211',null,'개그맨');
insert into `Patients` values ('P107101','D107104','N107101','강호동','920907-1234567','M','부산','010-7103-9209',null,'개그맨');
insert into `Patients` values ('P105102','D105101','N105101','조인성','891209-1234567','M','광주','010-7104-8912','join@gmail.com','배우');
insert into `Patients` values ('P104103','D104101','N104101','강동원','770314-1234567','M','광주','010-8101-7703','dong@naver.com','배우');

insert into `treatments` values (1021001,'D102101','P102101','감기, 몸살','2022-01-10 10:50:12');
insert into `treatments` values (1031002,'D103101','P103101','교통사고 외상','2022-01-10 10:50:12');
insert into `treatments` values (1021003,'D102104','P102102','위염, 장염','2022-01-10 10:50:12');
insert into `treatments` values (1041004,'D104101','P104101','피부 트러블','2022-01-10 10:50:12');
insert into `treatments` values (1051005,'D105101','P105101','코막힘 및 비염','2022-01-10 10:50:12');
insert into `treatments` values (1031006,'D103101','P103102','목디스크','2022-01-10 10:50:12');
insert into `treatments` values (1041007,'D104101','P104102','여드름','2022-01-10 10:50:12');
insert into `treatments` values (1081008,'D108101','P108101','오른쪽 발목 뼈 골절','2022-01-10 10:50:12');
insert into `treatments` values (1021009,'D102104','P102103','소화불량','2022-01-10 10:50:12');
insert into `treatments` values (1071010,'D107104','P107101','가슴 통증','2022-01-10 10:50:12');
insert into `treatments` values (1051011,'D105101','P105102','귀 이명','2022-01-10 10:50:12');
insert into `treatments` values (1041012,'D104101','P104103','팔목 화상','2022-01-10 10:50:12');

insert into `Charts` values ('C1021001',1021001,'D102101','P102101','감기 주사 및 약 처방');
insert into `Charts` values ('C1031002',1031002,'D103101','P103101','입원 치료');
insert into `Charts` values ('C1021003',1021003,'D102104','P102102','위내시경');
insert into `Charts` values ('C1041004',1041004,'D104101','P104101','피부 감염 방지 주사');
insert into `Charts` values ('C1051005',1051005,'D105101','P105101','비염 치료');
insert into `Charts` values ('C1031006',1031006,'D103101','P103102','목 견인치료');
insert into `Charts` values ('C1041007',1041007,'D104101','P104102','여드름 치료약 처방');
insert into `Charts` values ('C1081008',1081008,'D108101','P108101','발목 깁스');
insert into `Charts` values ('C1021009',1021009,'D102104','P102103','주사 처방');
insert into `Charts` values ('C1071010',1071010,'D107104','P107101','MRI 검사');
insert into `Charts` values ('C1051011',1051011,'D105101','P105102','귀 청소 및 약 처방');
insert into `Charts` values ('C1041012',1041012,'D104101','P104103','화상 크림약 처방');

#SQL
#1. 모든 의사의 의사ID, 이름, 생년월일, 전공의과 번호, 전공의과 이름을 조회하시오.
 select `doc_id`,`doc_name`,`doc_birth`,a.dep_no,`dep_name` from `doctors` as a
 join `departments` as b
 on a.dep_no = b.dep_no;
 
#2. 모든 간호사의 간호사Id, 이름, 생년월일, 전공의과 번호, 전공의과 이름을 조회하시오.
  select `nur_id`,`nur_name`,`nur_birth`,a.dep_no,`dep_name` from `nurses` as a
  join `departments` as b
  on a.dep_no = b.dep_no;
 
#3. 모든 환자의 환자Id, 이름, 주민번호, 휴대폰, 담당의사 이름, 담당 간호사 이름을 조회하시오.
 select `pat_id`,`pat_name`,`pat_jumin`,`pat_phone`,`doc_name`,`nur_name` from `patients` as a
 join `doctors` as b
 on a.doc_id = b.doc_id
 join `nurses` as c
 on a.nur_id = c.nur_id;
 
#4. 모든 진료내역에서 환자이름, 담당의사이름, 진료내용, 처방내용, 진료날짜를 조회하시오. 
select `pat_name`,`doc_name`,`treat_contents`,`chart_contents`,`treat_datetime` from `treatments` as a
join `doctors` as b
on a.doc_id = b.doc_id
join `patients` as c
on a.doc_id = c.doc_id
join `charts` as d
on a.doc_id = d.doc_id;

#5. 모든 진료내역에서 '외과'에서 진료한 내역 가운데 진료번호, 환자이름, 담당의사명, 진료내용, 처방내용, 진료날짜를 조회하시오.
select a.treat_no,`pat_name`,`doc_name`,`treat_contents`,`chart_contents`,`treat_datetime` from `treatments` as a
join `doctors` as b
on a.doc_id = b.doc_id
join `patients` as c
on a.pat_id = c.pat_id
join `charts` as d
on a.treat_no = d.treat_no
join `departments` as e
on b.dep_no = e.dep_no
where `dep_name` = '외과';

#6. 모든 진료내역에서 '화상'으로 진료한 내역 가운데 진료번호, 환자이름, 담당의사명, 진료내용, 처방내용, 진료날짜를 조회하시오.
select a.treat_no,`pat_name`,`doc_name`,`treat_contents`,`chart_contents`,`treat_datetime` from `treatments` as a
join `doctors` as b
on a.doc_id = b.doc_id
join `patients` as c
on a.pat_id = c.pat_id
join `charts` as d
on a.treat_no = d.treat_no
where `treat_contents` like '%화상%';

#7. 현재 날짜를 기준으로 30세 이상~ 40세 미만 환자를 조회하시오. 84 94
 select * from
 (select
	year(now()) - `year` as `age`
 from
	(select *, concat('19', substring(`pat_jumin`,1,2)) as `year` from `patients`) as a ) as b
    where `age` >=30 and `age` <40;
    
    
select * from `patients` 
where (year(now()) - concat(19,substr(pat_jumin,1,2))+1) between 30 and 40;

    
#8. 모든 전공부서에서 아직 의사ID가 부여되지 않은 의사의 이름과 부서명을 조회하시오.
 select `dep_manager`,`dep_name` from `departments` as a
 left join `doctors` as b
 on a.dep_no = b.dep_no
 where `doc_name` is null;
 
#9. 김태희 간호사가 맡고 있는 모든 환자의 이름을 구분자 ^으로 해서 '강동원^고소영^이나영'과 같이 조회하시오.
 select group_concat(`pat_name` separator '^')  from `patients` as a # '김태희 간호사가 담당하는'(그룹: 김태희) 환자이름 한줄에
 join `nurses` as b using (nur_id)
 where `nur_name` = '김태희';
 
 
#10. 가장 많은 환자수를 담당하는 간호사 Id, 간호사 이름, 담당환자수를 조회 하시오. 
SET SESSION sql_mode = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
select `nur_id`,`nur_name`,count(`pat_id`) as `환자수` from `patients` as a
 join `nurses` as b using (nur_id)
 group by `nur_id`
 order by `환자수` desc limit 1;

