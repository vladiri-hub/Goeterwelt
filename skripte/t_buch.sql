--@C:\sv_projekt\skripte\t_literatur.sql

cl scr

SET echo ON


CREATE TABLE t_literatur
(
	buch_id 	number			CONSTRAINT pk_t_literatur_id PRIMARY KEY,
	titel 		varchar2(100)	CONSTRAINT nn_t_literatur_titel NOT NULL,
	autor		varchar2(100)
);


INSERT INTO t_literatur(buch_id, titel)
	VALUES(1, 'Buch');


 @C:\sv_projekt\skripte\t_gott.sql
