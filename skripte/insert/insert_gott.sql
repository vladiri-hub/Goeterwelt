REM @C:\sv_projekt\skripte\insert\insert_gott.sql

set echo on
cl scr

REM In Welcher Tabelle möchtest du etwas hinzufügen?

PROMPT Folgende Gott_IDs sind bereits vergeben:

SELECT gott_id
  FROM t_gott;

PROMPT 
PROMPT

ACCEPT gott_id PROMPT "Gott_ID: ";
ACCEPT name PROMPT "Name: ";
ACCEPT religion PROMPT "Kultur: ";
ACCEPT dynastie PROMPT "Göttergeschlecht: ";
ACCEPT geschlecht PROMPT "Geschlecht: " DEFAULT 'männlich'
ACCEPT kurzbeschreibung PROMPT "Kurzbeschreibung: ";


INSERT INTO t_gott (gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung )
  VALUES (&gott_id, '&name', '&religion', '&dynastie', '&geschlecht', '&kurzbeschreibung');

PROMPT

SELECT *
  FROM t_gott
  WHERE gott_id = &gott_id;

PROMPT
PROMPT

ACCEPT auswahl PROMPT "Weiteren Gott hinzufügen? (j/n) " DEFAULT j;
  
@C:\sv_projekt\skripte\insert\&auswahl._gott.sql