REM @C:\sv_projekt\skripte\delete\delete_kultur.sql

set echo on
cl scr

SELECT *
  FROM t_kultur;

PROMPT Welche Daten möchtest du ändern?
PROMPT Gib eine Religion an.

ACCEPT religion PROMPT "Religion: ";


DELETE
  FROM t_kultur
  WHERE religion = '&religion';

PROMPT

SELECT *
  FROM t_kultur;

PROMPT
PROMPT

ACCEPT auswahl PROMPT "Weitere Religionen löschen? (j/n) " DEFAULT j;

@C:\sv_projekt\skripte\delete\&auswahl._kultur.sq