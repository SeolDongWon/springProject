create table myboard(
 seq number(5) PRIMARY KEY,
 title VARCHAR2(210),
 writer VARCHAR2(21),
 content VARCHAR2(2000),
 regdate date default sysdate,
 cnt number(5) default 0,
 fileName varchar2(50)
);
desc myboard;

drop table myboard;


insert into myboard(seq, title, writer, content) values ((select nvl(max(seq), 0)+1 from board), '3', '2', '1');

select * from myboard where title like '%%' and content like '%%';
select * from myboard;
commit;
delete from myboard where title is null;
delete from users;

CREATE TABLE USERS(
ID VARCHAR2(8) PRIMARY KEY,
PASSWORD VARCHAR2(8),
NAME VARCHAR2(20), 
ROLE VARCHAR2(5)
);
INSERT INTO USERs VALUES('test', 'test123','������','Admin');
INSERT INTO USERs  VALUES('user1','user1','ȫ�浿', 'User');
commit;
select * from users;
insert into users values('admin','11111','tt','ff');

select * from users where id='test' and password='test123';
select * from users where id='seol1';
update users set role='User' where id='seol1';

select * from users;
select * from users where id='seol1' and password='11111';
select * from users where id=('seol1' or 1='1');