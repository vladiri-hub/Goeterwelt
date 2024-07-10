REM @C:\sv_projekt\skripte\update\update_kultur.sql

set echo on
cl scr

SELECT *
  FROM t_kultur;

PROMPT Welche Daten möchtest du ändern?
PROMPT Gib eine Religion an, die geändert werden soll.

ACCEPT religion PROMPT "Religion: ";


UPDATE t_kultur
  SET religion = '&religion';

PROMPT

SELECT *
  FROM t_kultur
  WHERE religion = '&religion';

PROMPT
PROMPT

ACCEPT auswahl PROMPT "Weitere Religionen bearbeiten? (j/n) " DEFAULT j;

@C:\sv_projekt\skripte\update\&auswahl._kultur.sql