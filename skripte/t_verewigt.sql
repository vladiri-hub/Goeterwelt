--@C:\sv_projekt\skripte\t_verewigt.sql

cl scr

SET echo ON


CREATE TABLE t_verewigt
(
	gott_id 	number CONSTRAINT fk_t_verewigt_gott_id REFERENCES t_gott(gott_id),
	buch_id		number CONSTRAINT fk_t_verewigt_buch_id REFERENCES t_literatur(buch_id),
	CONSTRAINT pk_t_verewigt_gott_id_buch_id PRIMARY KEY (gott_id, buch_id)
);


@C:\sv_projekt\skripte\t_erzeugen.sql