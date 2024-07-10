REM @C:\sv_projekt\skripte\insert\insert_literatur.sql

set echo on
cl scr

PROMPT Folgende Buch_IDs sind bereits vergeben:

SELECT buch_id
  FROM t_literatur;

PROMPT 
PROMPT

ACCEPT buch_id PROMPT "Buch_ID: ";
ACCEPT titel PROMPT "Titel: ";
ACCEPT autor PROMPT "Autor: ";

INSERT INTO t_literatur (buch_id, titel, autor)
  VALUES (&buch_id, '&titel', '&autor');

PROMPT

SELECT *
  FROM t_literatur
  WHERE buch_id = &buch_id;

PROMPT
PROMPT

ACCEPT auswahl PROMPT "Weiteres Buch hinzufügen? (j/n) " DEFAULT j;
  
@C:\sv_projekt\skripte\insert\&auswahl._buch.sql