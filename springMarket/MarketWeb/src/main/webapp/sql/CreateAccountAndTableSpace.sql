--system �������� ����
--c## ���ξ���� ������ �����ϱ� ���� ���� ����
alter session set "_ORACLE_SCRIPT"=true;
--���� ����
create user seol identified by seol;
--���� �ο�
grant connect, resource to seol;

--���ڵ带 �����ϱ� �� ���̺� �����̽� ������ ���� �����մϴ�. 
--���̺� �����̽��� ��ȸ    
select tablespace_name, status, contents from dba_tablespaces;
--���̺� �����̽��� ���� ������ Ȯ�� 
select tablespace_name, sum(bytes), max(bytes) from dba_free_space
group by tablespace_name;

--���ο� ������ ����ϴ� ���̺� �����̽��� Ȯ��
select username, default_tablespace from dba_users
where username in upper('seol');

--���ο� ������ USERS ���̺� �����̽��� �����͸� �Է��� �� �ֵ��� 5m�� �뷮 �Ҵ�
alter user seol quota 5m on users;
    
--�� �������� ����Ŭ ����
