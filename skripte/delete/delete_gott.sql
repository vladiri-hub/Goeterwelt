REM @C:\sv_projekt\skripte\delete\delete_gott.sql

set echo on
cl scr

SELECT *
  FROM t_gott;

PROMPT Welche Daten möchtest du ändern?
PROMPT Gib eine Gott_ID.

ACCEPT gott_id PROMPT "Gott_ID: ";

DELETE
  FROM t_gott
  WHERE gott_id = &gott_id;

PROMPT

SELECT *
  FROM t_gott;

PROMPT
PROMPT

ACCEPT auswahl PROMPT "Weiteren Gott löschen? (j/n) " DEFAULT j;

@C:\sv_projekt\skripte\delete\&auswahl._gott.sql