--system 계정에서 실행
--c## 접두어없이 계정을 생성하기 위한 세션 변경
alter session set "_ORACLE_SCRIPT"=true;
--계정 생성
create user seolmarket identified by seolmarket;
--권한 부여
grant connect, resource to seolmarket;

--테이블 스페이스 설정
--테이블 스페이스 조회    
select tablespace_name, status, contents from dba_tablespaces;
--테이블 스페이스별 가용 공간 확인 
select tablespace_name, sum(bytes), max(bytes) from dba_free_space
group by tablespace_name;

--새로운 계정이 사용하는 테이블 스페이스 확인
select username, default_tablespace from dba_users
where username in upper('seol');

--새로운 계정이 USERS 테이블 스페이스에 데이터를 입력할 수 있도록 5m의 용량 할당
alter user seolmarket quota 5m on users;
    
--새로운 계정으로 오라클 접속
