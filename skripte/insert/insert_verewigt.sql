REM @C:\sv_projekt\skripte\insert\insert_verewigt.sql

set pagesize 20
set linesize 300
set echo on
cl scr

PROMPT Folgende Status sind bereits 
PROMPT mit dem jewiligen Gott verknüpft::

SELECT gott_id, name, titel
  FROM t_gott g JOIN t_verewigt v ON g.gott_id = v.gott_id
                JOIN t_literatur b     ON v.buch_id = b.buch_id
;

PROMPT Diese Götter und Bücher stehen zur Auswahl:
PROMPT

SELECT gott_id, name
  FROM t_gott;

SELECT titel
  FROM t_literatur;

PROMPT
PROMPT Verbinde bestehende Götter mit den passenden Büchern.

ACCEPT gott_id PROMPT "Gott_ID: ";
ACCEPT buch_id "Buch_ID: ";

INSERT INTO t_verewigt (gott_id, buch_id)
  VALUES (&gott_id, &buch_id);


PROMPT
PROMPT

ACCEPT auswahl PROMPT "Weitere Verbindungen hinzufügen? (j/n) " DEFAULT j;
  
@C:\sv_projekt\skripte\insert\&auswahl._verewigt.sql