--@C:\sv_projekt\skripte\t_taetigkeit.sql

cl scr

SET echo ON


CREATE TABLE t_taetigkeit
(
	gott_id 	number CONSTRAINT fk_t_taetigkeit_gott_id REFERENCES t_gott(gott_id),
	status		varchar2(200),
	CONSTRAINT pk_t_taetigkeit_gott_id_status PRIMARY KEY (gott_id, status)
);


@C:\sv_projekt\skripte\t_verewigt.sql