--테이블 목록 조회
select * from tab;

drop table product;
drop table member;
drop table businessmember;
--개인회원 테이블 작성
create table member(
memberNo number primary key,
memberId varchar2(50) UNIQUE,
memberPassword varchar2(50) not null,
memberName varchar2(50) not null,
memberTel varchar2(50) not null,
memberAddress varchar2(50) not null,
memberRegDate Date default sysdate
);
desc member;
select * from member;
insert into member(memberNo, memberId, memberPassword, memberName,memberTel,memberAddress) values(memberNo_seq.nextval,'test','test','test','test','test');
CREATE SEQUENCE memberNo_seq -- 시퀀스이름
    START WITH 1 -- 시작을 1로 설정
    INCREMENT BY 1 -- 증가 값을 1씩 증가
    NOMAXVALUE -- 최대 값이 무한대
    NOCACHE
    NOCYCLE;

create table businessmember(
businessmemberNo number primary key,
businessmemberId varchar2(50) UNIQUE,
businessPassword varchar2(50) not null,
businessmemberName varchar2(50) not null,
businessmemberTel varchar2(50) not null,
businessmemberAddress varchar2(50) not null,
businessmemberRegDate Date default sysdate
);

create table product(
productNo number primary key,
businessmemberNo not null,
productName varchar2(50) not null,
productClass varchar2(50) not null,
productStock number default 0 not null,
productRegDate Date default sysdate,
constraint product_FK_businessmemberNo FOREIGN key(businessmemberNo) references businessmember(businessmemberNo)
);



