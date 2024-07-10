REM @C:\sv_projekt\skripte\insert\insert_land.sql

set echo on
cl scr

PROMPT Folgende Länder und Religionen sind bereits eingetragen:

SELECT land
  FROM t_land;

SELECT *
  FROM t_kultur;

PROMPT 
PROMPT

ACCEPT land PROMPT "Land: ";
ACCEPT religion PROMPT "Religion: " DEFAULT NULL;

INSERT INTO t_land (heutiges_land, religion)
  VALUES ('&land', '&religion');


PROMPT

SELECT *
  FROM t_land
  WHERE heutiges_land = '&land';

PROMPT
PROMPT

ACCEPT auswahl PROMPT "Weiteres Land hinzufügen? (j/n) " DEFAULT j;
  
@C:\sv_projekt\skripte\insert\&auswahl._land.sql