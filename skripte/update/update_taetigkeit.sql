@C:\sv_projekt\skripte\update\update_taetigkeit.sql

set echo on
cl scr

SELECT *
  FROM t_taetigkeit;

PROMPT Welche Daten möchtest du ändern?
PROMPT Gib eine Gott_ID und einen Status an, die zu ändern sind.

ACCEPT gott_id PROMPT "Gott_ID: " DEFAULT NULL;
ACCEPT status PROMPT "Status: " DEFAULT NULL;


UPDATE t_taetigkeit
  SET gott_id = &gott_id, status = '&status'
  WHERE gott_id = &gott_id
    AND status = '&status';

PROMPT

SELECT *
  FROM t_tätigkeit
  WHERE gott_id = &gott_id;
    AND status = '&status';

PROMPT
PROMPT

ACCEPT auswahl PROMPT "Weitere Tätigkeit bearbeiten? (j/n) " DEFAULT j;

@C:\sv_projekt\skripte\update\&auswahl._taetigkeit.sql