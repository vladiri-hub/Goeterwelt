REM @C:\sv_projekt\skripte\update\update_gott.sql

set echo on
cl scr

SELECT *
  FROM t_gott;

PROMPT Welche Daten möchtest du ändern?
PROMPT Gib eine Gott_ID an und die jeweiligen Angaben, die zu ändern sind.

ACCEPT gott_id PROMPT "Gott_ID: ";
ACCEPT name PROMPT "Name: " DEFAULT NULL;
ACCEPT religion PROMPT "Kultur: " DEFAULT NULL;
ACCEPT dynastie PROMPT "Göttergeschlecht: " DEFAULT NULL;
ACCEPT geschlecht PROMPT "Geschlecht: " DEFAULT 'männlich';
ACCEPT kurzbeschreibung PROMPT "Kurzbeschreibung: " DEFAULT NULL;


UPDATE t_gott
  SET name = '&name', religion = '&religion', dynastie = '&dynastie', geschlecht = '&geschlecht',  kurzbeschreibung = '&kurzbeschreibung' 
  WHERE gott_id = &gott_id;

PROMPT

SELECT *
  FROM t_gott
  WHERE gott_id = &gott_id;

PROMPT
PROMPT

ACCEPT auswahl PROMPT "Weiteren Gott bearbeiten? (j/n) " DEFAULT j;

@C:\sv_projekt\skripte\update\&auswahl._gott.sql