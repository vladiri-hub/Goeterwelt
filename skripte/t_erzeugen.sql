--@C:\sv_projekt\skripte\t_erzeugen.sql

cl scr

SET echo ON


CREATE TABLE t_erzeugen
(
	gott_id number 	CONSTRAINT fk_t_erzeugen_gott_id 	REFERENCES t_gott(gott_id),
	kinder	number	CONSTRAINT fk_t_erzeugen_kinder	REFERENCES t_gott(gott_id),
	CONSTRAINT pk_t_erzeugen_gott_id_kinder PRIMARY KEY (gott_id)
);


@C:\sv_projekt\skripte\hauptmenue.sql