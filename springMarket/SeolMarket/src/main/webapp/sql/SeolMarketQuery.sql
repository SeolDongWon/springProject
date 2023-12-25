--테이블 목록 조회
select * from tab;

drop table user_tb;
drop SEQUENCE user_no_seq;


--테이블 작성
create table user_tb(
no number default user_no_seq.nextval  primary key ,
id varchar2(50) UNIQUE,
password varchar2(50) not null,
name varchar2(50) not null,
tel varchar2(50) not null,
address varchar2(50) not null,
regdate date default sysdate
);
CREATE SEQUENCE user_no_seq -- 시퀀스이름
    START WITH 1 -- 시작을 1로 설정
    INCREMENT BY 1 -- 증가 값을 1씩 증가
    NOMAXVALUE -- 최대 값이 무한대
    NOCACHE
    NOCYCLE;

select to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS') from dual;

desc user_tb;

select * from user_tb;

insert into user_tb(no, id, password, name,tel,address) 
    values(user_no_seq.nextval,'test','test','test','test','test');
insert into user_tb(id, password, name,tel,address) 
    values('test1','test','test','test','test');
commit;

drop table board_tb;
create table board_tb(
 no number PRIMARY KEY,
 user_no REFERENCES user_tb(no) not null,
 board_class_no REFERENCES board_class_tb(no) not null,
 board_category_name VARCHAR2(200) not null,
 writer VARCHAR2(200) not null,
 title VARCHAR2(200) not null,
 content VARCHAR2(2000) not null,
 regdate VARCHAR2(200) default to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS'),
 cnt number(5) default 0,
 state number DEFAULT 1 not NULL
);


update board_tb set user_no = 1;
alter table board_tb add user_no number;
alter table board_tb modify user_no number not null;
alter table board_tb add constraint board_tb_user_no_fk FOREIGN key(user_no) REFERENCES user_tb(no);
alter table board_tb add class_no number default '2' REFERENCES board_class_tb(no) not null;


CREATE SEQUENCE board_no_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;
    
insert into board_tb(no, title, writer, content) values (board_no_seq.nextval, 'test1', 'test2', 'test3');  
select * from board_tb order by no desc;
select * from board_tb where category like '%'||'일반'||'%' order by no desc;
select * from board_tb where class_no=2 and category like '%'||''||'%' order by no desc;

select * from board_tb where 
    title like '%'||'등록'||'%' and 
    content like '%'||''||'%' and
    writer like '%'||''||'%' order by no desc;


commit;

drop table board_class_tb;
create table board_class_tb(
no number primary key,
name varchar2(200) UNIQUE not null,
state number DEFAULT 1 not NULL
);
CREATE SEQUENCE board_class_no_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;

insert into board_class_tb (no,name) values(board_class_no_seq.nextval,'test');
select * from board_class_tb order by no desc;
update board_class_tb 
set state=(SELECT  CASE  WHEN state = 1 THEN 0 ELSE 1 END AS result FROM board_class_tb where no=4) 
where no=4;

(SELECT  CASE  WHEN state = 1 THEN 0 ELSE 1 END AS result FROM board_class_tb where no=4);


drop table board_category_tb;
create table board_category_tb(
no number primary key,
board_class_no number REFERENCES board_class_tb(no) not null,
name varchar2(200) not null,
state number DEFAULT 1 not NULL
);
CREATE SEQUENCE board_category_no_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;

select * from board_category_tb order by no desc;


insert into board_category_tb(no,board_class_no,name) VALUES(board_category_no_seq.nextval,'1','catetest');
commit;

select nvl(max(category_no), 0)+1 from board_category_tb where board_class_no='2';


select * from board_tb b join board_category_tb bc on (b.board_category_no=bc.no) where b.board_class_no=2 order by b.no desc;









create table product(
productNo number primary key,
businessuser_No not null,
productName varchar2(50) not null,
productClass varchar2(50) not null,
productStock number default 0 not null,
productRegDate Date default sysdate,
constraint product_FK_businessuser_No FOREIGN key(businessuser_No) references businessuser_(businessmemberNo)
);



