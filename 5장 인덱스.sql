# 날짜 : 2024.07.05
# 이름 : 정지현
# 내용 : 제 5장 데이터베이스 개체

# 실습 5-1
show index from `user1`;
show index from `user2`;
show index from `user3`; #hp는 unique이므로 보조 인덱스임

# 실습 5-2
create index `idx_user1_uid` on `user1` (`uid`);
analyze table `user1`;

select * from `user5`;
insert into `user5` (`name`, `gender`, `age`, `addr`) select `name`, `gender`, `age`, `addr` from `user5`;
update `user5` set `name` =  '홍길동' where `seq`=3;
update `user5` set `name` =  '정약용' where `seq`=80;

select count(*) from `user5`;
select * from `user5` where `name`='홍길동';
select * from `user5` where `name`='정약용';

create view `vw_user2` as (select `uid`,`name`,`birth` from `user2`);

# 실습 5-3
create view `vw_user4_age_number30` as (select * from `user4` where `age` < 30);
create view `vw_memver_with_sales` as (
select 
	a.`uid` as `직원아이디`,
    b.`name` as `직원이름`,
    b.`pos` as `직급`,
    c.`name` as `부서명`,
    a.`year` as `매출년도`,
    a.`month` as `월`,
    a.`sale` as `매출액`
    from `sales` as a
    join `member` as b on a.uid = b.uid
    join `department` as c on b.dep = c.depno
    );
    
    select * from `vw_user2`;
    select * from `vw_user4_age_number30`;

# 실습 5-6
DELIMITER $$
	create procedure proc_test1()
    BEGIN
		select * from `member`;
        select * from `department`;
	END $$
DELIMITER ;

call proc_test1();
    
# 실습 5-8
DELIMITER $$
	create procedure proc_test2(in _userName varchar(10))
    BEGIN
		select * from `member` where `name` =_userName;
	END $$
DELIMITER ;

call proc_test2('김유신');

DELIMITER $$
	create procedure proc_test3(in _pos VARCHAR(10), in _dep tinyint)
    BEGIN
		select * from `member` where `pos` =_pos AND `dep`=_dep;
	END $$
DELIMITER ;

call proc_test3('차장',101);

DELIMITER $$
	create procedure proc_test4(in _pos VARCHAR(10), out _count int)
    BEGIN
		select count(*) into _count from `member` where `pos` =_pos;
	END $$
DELIMITER ;

call proc_test4('대리', @_count);
select concat('_count : ', @_count)

# 실습 5-9. 프로시저 프로그래밍
DELIMITER $$
	create procedure proc_test5(in _name VARCHAR(10))
    BEGIN
		declare userId varchar(10); # 변수 선언
        select `uid` into userId from `member` where `name` =_name;
        select  * from `sales` where `uid`=userId;
	END $$
DELIMITER ;

call proc_test5('김유신');

DELIMITER $$
	create procedure proc_test6()
    BEGIN
		declare num1 int;
        declare num2 int;
        
        set num1 = 1;
        set num2 = 2;
        
        if (NUM1 > NUM2) then
			select 'NUM1이 NUM2보다 크다.' as `결과2`;
        else
			select 'NUM1이 NUM2보다 작다.' as `결과2`;
		END if;
	END $$
    DELIMITER ;
    
    call proc_test6(1);
    
    
    DELIMITER $$
	create procedure proc_test7()
    BEGIN
		declare sum int;
        declare num int;
        
        set sum = 0;
        set num = 1;
        
        while (num <= 10) DO
			set sum = sum + num;
            set num = num + 1;
		END WHILE;
        
        select sum AS '1부터 10까지 합계';
	END $$
    DELIMITER ;
    
call proc_test7();

    DELIMITER $$
	create procedure proc_test8()
    BEGIN
		#변수 선언
        declare total int default 0;
        declare price int;
        declare end0fRow boolean default false;
        
        #커서 선언 #한 행씩 순회
        declare salesCursor CURSOR FOR
			select `sale` from `sales`;
		
        #반복 조건
        declare continue handler
			for not found set end0fRow = TRUE;

		#커서 열기 (반복문) 커서가 한 행씩 끝까지 도달할 때 까지 price 변수에 담아서 total에 대입
        open salesCursor;
        
        cursor_loop : LOOP
			fetch salesCursor into price;
            
            if end0fRow then
				leave cursor_loop;
			END IF;
            
            set total = total + price;
		End Loop;
        
        select total as '전체 합계';
        
        close salesCursor;
	END $$
    DELIMITER ;
    
    call proc_test8();
    
    
#ChatGPT
#위 코드는 MySQL에서 작성된 stored procedure입니다. 이 stored procedure은 sales 테이블에서 sale 컬럼의 값을 모두 더한 결과를 출력하는 기능을 합니다.

#여기서 각 부분을 설명드리겠습니다:

#proc_test8 프로시저 생성

#proc_test8라는 이름의 저장 프로시저가 생성됩니다.
#변수 선언

#total: 누적 합계를 저장할 변수로, 초기값은 0으로 설정됩니다.
#price: 커서에서 가져온 각 판매 금액을 저장할 변수입니다.
#end0fRow: 커서가 끝에 도달했는지 여부를 나타내는 boolean 변수로, 초기값은 false입니다.
#커서 선언

#salesCursor: sales 테이블에서 판매 금액을 순회할 커서입니다.
#반복 조건 핸들러 설정

#continue handler는 커서가 데이터를 찾지 못했을 때 (not found) end0fRow 변수를 TRUE로 설정하여 반복을 종료합니다.
#커서 열기 및 반복문

#open salesCursor;는 커서를 열어서 판매 금액을 순회할 준비를 합니다.
#LOOP와 END LOOP 사이의 코드는 커서로부터 데이터를 가져와서 price 변수에 할당하고, 이를 total 변수에 더하는 과정을 반복합니다.
#fetch salesCursor into price;는 커서에서 한 행씩 데이터를 가져와서 price 변수에 할당하는 역할을 합니다.
#leave cursor_loop;는 end0fRow가 true일 경우 반복문을 종료합니다.
#최종 결과 출력

#반복이 완료되면 total 변수에 저장된 전체 합계를 출력합니다.
#커서 닫기

#close salesCursor;는 커서를 닫아 자원을 해제합니다.
#따라서, 이 stored procedure을 실행하면 sales 테이블에서 모든 판매 금액을 더한 결과인 전체 합계가 출력될 것입니다.
    
    # 실습 5-11 저장 함수 생성 및 호출
    
    DELIMITER $$
	create FUNCTION func_test1(_userid varchar(10)) returns int
    BEGIN
		declare total int;
        
        select SUM(`sale`) into total From `sales` where `uid`=_userid;
        
        return total;
	END $$
    DELIMITER ;
    
    select func_test1('a101');
    
	DELIMITER $$
	create FUNCTION func_test2(_sale int) returns double
    BEGIN
		declare bonus double;
        
        if (_sale >= 100000) then
			set bonus = _sale * 0.1;
		else
			set bonus = _sale * 0.05;
		end if;
        
	return bonus;
	END $$
    DELIMITER ;
    
    select
		`uid`,
        `year`,
        `month`,
        `sale`,
        func_test2(`sale`) as `bonus`
        FROM `sales`;