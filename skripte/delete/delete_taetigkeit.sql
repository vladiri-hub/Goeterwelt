@C:\sv_projekt\skripte\delete\delete_taetigkeit.sql

set echo on
cl scr

SELECT *
  FROM t_taetigkeit;

PROMPT Welche Daten möchtest du ändern?
PROMPT Gib eine Gott_ID und einen Status an.

ACCEPT gott_id PROMPT "Gott_ID: " DEFAULT NULL;
ACCEPT status PROMPT "Status: " DEFAULT NULL;


DELETE
  FROM t_taetigkeit
  WHERE gott_id = &gott_id
    AND status = '&status';

PROMPT

SELECT *
  FROM t_tätigkeit;

PROMPT
PROMPT

ACCEPT auswahl PROMPT "Weitere Tätigkeit löschen? (j/n) " DEFAULT j;

@C:\sv_projekt\skripte\delete\&auswahl._taetigkeit.sql