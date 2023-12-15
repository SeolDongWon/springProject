create table myboard(
 seq number(5) PRIMARY KEY,
 title VARCHAR2(210),
 writer VARCHAR2(21),
 content VARCHAR2(2000),
 regdate date default sysdate,
 cnt number(5) default 0
);

insert into myboard(seq, title, writer, content) values ((select nvl(max(seq), 0)+1 from board), '3', '2', '1');

select * from myboard;
delete from myboard;
commit;

CREATE TABLE USERS(
ID VARCHAR2(8) PRIMARY KEY,
PASSWORD VARCHAR2(8),
NAME VARCHAR2(20), ROLE VARCHAR2(5)
);
INSERT INTO USERs VALUES('test', 'test123','관리자','Admin');
INSERT INTO USERs  VALUES('user1','user1','홍길동', 'User');
commit;
select * from users;