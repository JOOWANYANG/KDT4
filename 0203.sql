-- 삼성 제품만 출력,
select * from producttbl where company = '삼성';

-- 세탁기의 원가는 얼마인가
select cost from producttbl where productname = '세탁기';

-- shopdb 데이터베이스의 테이블 목록을 출력
show tables;

show databases;

-- employees 데이터베이스에서 종업원 전체 목록을 출력
use employees;

show tables;
select * from employees;
select count(*) from employees;

-- 남성 종사자의 목록을 출력하시오..
select * from employees where gender='M';

-- 60년 이전 출생자의 목록을 출력..
select emp_no, last_name from employees where birth_data < '1980-01-01';
select * from employees where birth_data < '1990-01-01';

-- 연봉 1억 이상인 사람의 emp_no을 출력
show tables;
select emp_no from salaries where salary > 100000;

-- 연봉 1억 이상인 사람의 인원수를 출력
select count(emp_no) from salaries where salary > 100000;

-- 입사연도가 1990년 07월 07일 이전인 'engineer'인 사람들의 데이터를 출력
show tables;
select * from titles;
select * from titles where from_data < '1990-07-07' and title='engineer';

-- Table을 생성하고 직접 값을 입력하는 sql query
-- (create databas 데이터베이스이름;)
-- (use 데이터베이스이름;)
-- create table 테이블이름 (칼럼명, 데이터타입, 제약조건);
-- insert into 테이블이름 (칼럼명) values (값1, 값2, ... );

create database sqldb;
use sqldb;
create table usertbl (
	userid char(8) not null primary key,
    name varchar(10) not null,
    birthyear int not null,
    addr char(2) not null,
    mobile1 char(3),
    mobile2 char(8),
    height smallint,
    mdate date);

insert ignore into usertbl values ('LSG', '이승기', 1987 , '서울', '001', '11111111', '182', '2008-8-8');
insert ignore into usertbl values ('KBS', '이승기', 1987 , '서울', '001', '11111111', '182', '2008-8-8');
insert ignore into usertbl values ('LKKH', '이승기', 1987 , '서울', '001', '11111111', '182', '2008-8-8');
insert ignore into usertbl values ('JYP', '이승기', 1987 , '서울', '001', '11111111', '182', '2008-8-8');
insert ignore into usertbl values ('SSK', '이승기', 1987 , '서울', '001', '11111111', '182', '2008-8-8');
insert ignore into usertbl values ('LJB', '이승기', 1987 , '서울', '001', '11111111', '182', '2008-8-8');
insert ignore into usertbl values ('YJS', '이승기', 1987 , '서울', '001', '11111111', '182', '2008-8-8');
insert ignore into usertbl values ('EJW', '이승기', 1987 , '서울', '001', '11111111', '182', '2008-8-8');
insert ignore into usertbl values ('BBK', '이승기', 1987 , '서울', '001', '11111111', '182', '2008-8-8');
insert ignore into usertbl values ('BBK', '이승기', 1987 , '서울', '001', '11111111', '182', '2008-8-8');

select * from usertbl;

create table buytbl
(	num int not null primary key auto_increment,
    userid char(8) not null,
    prodname char(6) not null,
    groupname char(4),
    price int not null,
    amount smallint not null
);    

insert into buytbl values ( Null, 'KBS', '노트북', '전자' , 1000, 1);
insert into buytbl values ( Null, 'JYP', '모니터', '전자' , 200, 5);

select * from buytbl;


