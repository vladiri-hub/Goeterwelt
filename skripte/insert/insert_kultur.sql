REM @C:\sv_projekt\skripte\insert\insert_kultur.sql

set echo on
cl scr

PROMPT Folgende Religionen sind bereits vergeben:

SELECT religion
  FROM t_kultur;

PROMPT 
PROMPT

ACCEPT religion PROMPT "Religion: ";


INSERT INTO t_kultur 
  VALUES ('&religion');


PROMPT

SELECT *
  FROM t_kultur;

PROMPT 

PAUSE Enter

  
@C:\sv_projekt\skripte\insert\insert_land.sql