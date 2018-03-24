V$SGA_DYNAMIC_COOMPONENTS

MARIA   172.17.2.216
SADITH  172.17.2.225
NOELIA  172.17.2.226


create table scott.demo( id number, dato varchar(30) );


declare
  n number := 10001;
begin
	while( n <= 10000000) loop
		insert into scott.demo values( n, 'Hola');
		commit;
		n := n + 1;
	end loop;
end;
/

alter system switch logfile; 

ALTER DATABASE DROP LOGFILE GROUP 3; 

select group#,members,status,sequence# from v$log;   

select group#, member from v$logfile ORDER BY 1;

alter database 
add logfile group 3
('C:\APP\ALUMNO\ORADATA\ORCL\REDO03A.log', 
'C:\APP\ALUMNO\ORADATA\ORCL\REDO03B.log') 
size 100M;

   
   
   
select segment_name, segment_type, tablespace_name, bytes
from dba_segments
where owner='SCOTT';  


create tablespace ts_demo2
datafile  'C:\APP\ALUMNO\ORADATA\ORCL\TS_DEMO2.DBF'
size 5 M
autoextend on next 500 K maxsize 10 M;

create sequence sq_tabla;

create table ts_demo2 ( 
id number constraint pk_demo2 primary key,
dato varchar(100)
) tablespace ts_demo2;

declare 
  n number := 1;
begin  
	while( n <= 10000000 ) loop
	    insert into ts_demo2 values( sq_tabla.nextval, 'Hola');
		commit;
		n := n + 1;
	end loop;
end;
/


 
   
   