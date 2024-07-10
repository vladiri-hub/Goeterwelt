REM @C:\sv_projekt\skripte\update\update_literatur.sql

set echo on
cl scr

SELECT *
  FROM t_buch;

PROMPT Welche Daten möchtest du ändern?
PROMPT Gib eine Buch_ID an und die jeweiligen Angaben, die zu ändern sind.

ACCEPT buch_id PROMPT "Buch_ID: ";
ACCEPT titel PROMPT "Titel: " DEFAULT NULL;
ACCEPT autor PROMPT "Autor: " DEFAULT NULL;


UPDATE t_literatur
  SET titel = '&titel', autor = '&autor'
  WHERE buch_id = &buch_id;

PROMPT

SELECT *
  FROM t_literatur
  WHERE buch_id = &buch_id;

PROMPT
PROMPT

ACCEPT auswahl PROMPT "Weiteres Buch bearbeiten? (j/n) " DEFAULT j;

@C:\sv_projekt\skripte\update\&auswahl._buch.sql