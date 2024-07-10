REM @C:\sv_projekt\skripte\menu_gestaltung\1.sql

set echo on
cl scr

PROMPT In diesen Tabellen können Daten hinzugefügt werden:
PROMPT

desc t_gott;
desc t_literatur;
desc t_kultur;
desc t_taetigkeit;

PROMPT
PROMPT In Welcher Tabelle möchtest du Daten hinzufügen?
PROMPT

ACCEPT tabellenname PROMPT "Tabellenname: ";

PROMPT 
PROMPT Du hast folgende Tabelle ausgewählt:

desc t_&tabellenname;

PROMPT Drücke Enter

@C:\sv_projekt\skripte\insert\insert_&tabellenname..sql