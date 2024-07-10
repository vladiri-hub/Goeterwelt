REM @C:\sv_projekt\skripte\insert\insert_taetigkeit.sql

set echo on
cl scr

PROMPT Folgende Tätigkeiten in Verbindung 
PROMPT mit dem jewiligen Gott sind bereits vorhanden:

SELECT *
  FROM t_taetigkeit;

PROMPT 
PROMPT

ACCEPT gott_id PROMPT "Gott_ID: ";
ACCEPT status PROMPT "Tätigkeit: ";

INSERT INTO t_taetigkeit (gott_id, status)
  VALUES (&gott_id, &status);


PROMPT

SELECT *
  FROM t_tätigkeit
  WHERE gott_id = &gott_id;

PROMPT
PROMPT

ACCEPT auswahl PROMPT "Weitere Tätigkeit hinzufügen? (j/n) " DEFAULT j;
  
@C:\sv_projekt\skripte\insert\&auswahl._taetigkeit.sql