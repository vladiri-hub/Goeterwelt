REM @C:\sv_projekt\skripte\update\update_land.sql

set echo on
cl scr

SELECT *
  FROM t_land;

PROMPT Welche Daten möchtest du ändern?
PROMPT Gib ein Land an und die jeweiligen Religion an, die zu ändern ist.

ACCEPT land PROMPT "Land: ";
ACCEPT religion PROMPT "Religion: " DEFAULT NULL;

UPDATE t_land
  SET heutiges_land = '&land', religion = '&religion'
  WHERE heutiges_land = '&land';

PROMPT

SELECT *
  FROM t_land
  WHERE heutiges_land = '&land';

PROMPT
PROMPT

ACCEPT auswahl PROMPT "Weiteres Land bearbeiten? (j/n) " DEFAULT j;

@C:\sv_projekt\skripte\update\&auswahl._land.sql