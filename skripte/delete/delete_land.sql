REM @C:\sv_projekt\skripte\delete\delete_land.sql

set echo on
cl scr

SELECT *
  FROM t_land;

PROMPT Welche Daten möchtest du ändern?
PROMPT Gib ein Land an.

ACCEPT land PROMPT "Land: ";

DELETE 
  FROM t_land
  WHERE land = &land;

PROMPT

SELECT *
  FROM t_land;

PROMPT
PROMPT

ACCEPT auswahl PROMPT "Weiteres Land löschen? (j/n) " DEFAULT j;

@C:\sv_projekt\skripte\delete\&auswahl._land.sql