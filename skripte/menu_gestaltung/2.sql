REM @C:\sv_projekt\skripte\menu_gestaltung\2.sql

set ech on
cl scr

PROMPT Welche Daten möchtest du verändern?
PROMPT

desc t_gott;
desc t_literatur;
desc t_kultur;
desc t_taetigkeit;

PROMPT
PROMPT Bitte nenne die Tabelle: "
PROMPT

ACCEPT tabellenname PROMPT "Tabellenname: ";

PROMPT 
PROMPT Du hast folgende Tabelle ausgewählt:

desc t_&tabellenname;

PROMPT Drücke Enter

@C:\sv_projekt\skripte\update\update_&tabellenname..sql