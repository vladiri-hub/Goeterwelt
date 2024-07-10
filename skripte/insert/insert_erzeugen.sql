REM @C:\sv_projekt\skripte\insert\insert_erzeugen.sql

set pagesize 20
set linesize 300
set echo on
cl scr

PROMPT Folgende Götter stehen zur Auswahl:

SELECT gott_id, name
  FROM t_gott;

PROMPT Welchem Gott möchtest du in eine Eltern-Kinder-Beziehung setzen?
PROMPT


ACCEPT gott_id PROMPT "Gott_ID des Elternteil: ";
ACCEPT kinder "Gott_ID des Kindes: ";

INSERT INTO t_erzeugen (gott_id, kinder)
  VALUES (&gott_id, &kinder);
REM  CHECK (): Überprüfen, dass die Kombination Gott_ID + Kinder nicht bereits 
REM  existiert!!!

PROMPT
PROMPT

ACCEPT auswahl PROMPT "Weitere Verbindungen hinzufügen? (j/n) " DEFAULT j;
  
@C:\sv_projekt\skripte\insert\&auswahl._erzeugen.sql