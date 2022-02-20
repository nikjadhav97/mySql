-- Data manipulation laungage

create database labs
CREATE TABLE emp(Empno INT, Ename VARCHAR(10),job VARCHAR(9),Mgr VARCHAR(4),Hiredate Date,Sal INT,Comm INT,Deptno INT);

INSERT INTO emp(Empno, Ename, sal, Deptno)
VALUES(7369 , 'SMITH',800 ,20);

INSERT INTO emp(Empno, Ename,sal,Deptno)
VALUES(7499, 'ALLEN ',1600,30);

INSERT INTO emp(Empno, Ename,sal,Deptno)
VALUES(7521, 'WARD',1250 ,30);

INSERT INTO emp(Empno, Ename,sal,Deptno)
VALUES(7566, 'JONES',2975 ,20);

INSERT INTO emp(Empno, Ename,sal,Deptno)
VALUES(7654, 'MARTIN',1250 ,30);

INSERT INTO emp(Empno, Ename,sal,Deptno)
VALUES(7698,'BLAKE',2850 ,30);

INSERT INTO emp(Empno, Ename,sal,Deptno)
VALUES(7782 , 'CLARK',2450 ,10);

INSERT INTO emp(Empno, Ename,sal,Deptno)
VALUES(7788, 'SCOTT',3000,20);

INSERT INTO emp(Empno, Ename,sal,Deptno)
VALUES(7839 , 'KING ',5000,10);

 update emp set job=(select job where Empno=7788),
 Deptno=(select Deptno where Empno=7788) where Empno=7698;
 
 delete from emp where Deptno like '%sales%';
 
UPDATE emp SET Deptno=(select Deptno where Deptno=7788) where Deptno=7698;
 
 insert into emp (empno,Ename,job,mgr,Sal,Comm,Deptno) values (1000,'Allen', 'Clerk',1001, 3000, 2,10);
 
 insert into emp (empno,Ename,job,Mgr,sal,comm,deptno) values (1001,'George', 'analyst', null, 5000,0, 10);
 
 insert into emp (empno,Ename,job,Mgr,sal,comm,deptno) values (1002, 'Becker', 'Manager', 1000, 2800,4, 20);
 
 insert into emp (empno,Ename,job,mgr,sal,comm,deptno) values (1003, 'Bill', 'Clerk', 1002,3000, 0, 20);

COMMIT; 
SELECT * FROM emp;
DROP TABLE emp;