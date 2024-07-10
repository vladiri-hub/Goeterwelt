REM @C:\sv_projekt\skripte\delete\delete_literatur.sql

set echo on
cl scr

SELECT *
  FROM t_literatur;

PROMPT Welche Daten möchtest du löschen?
PROMPT Gib eine Buch_ID an und die jeweiligen Angaben, die zu löschen sind.

ACCEPT buch_id PROMPT "Buch_ID: ";

DELETE 
  FROM t_literatur
  WHERE buch_id = &buch_id;
   
PROMPT

SELECT *
  FROM t_literatur
  WHERE buch_id = &buch_id;

PROMPT
PROMPT

ACCEPT auswahl PROMPT "Weiteres Buch bearbeiten? (j/n) " DEFAULT j;

@C:\sv_projekt\skripte\delete\&auswahl._buch.sql