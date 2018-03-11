
SELECT * FROM X$VERSION;

SELECT * FROM SYS.PRUEBA$VERSION;

SELECT * FROM PANCHITO;

SELECT * FROM V_$sga;

SELECT * FROM V$sga;

SELECT * FROM TS$;

select * from dba_tables;


select sid, serial#, username, blocking_session  
from v$session 
where username = 'SCOTT'; 


select * from V$PWFILE_USERS;

rollback;






