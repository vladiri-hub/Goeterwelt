--@C:\sv_projekt\skripte\t_land.sql

cl scr

SET echo ON


CREATE TABLE t_land
(
	heutiges_land 		varchar2(20) CONSTRAINT pk_t_land_land PRIMARY KEY,
	religion 	varchar2(20) CONSTRAINT fk_t_land_religion REFERENCES kultur(religion)
);

--nordisch

INSERT INTO t_land (religion, heutiges_land )
	VALUES ('nordisch', 'Schweden');
INSERT INTO t_land (religion, heutiges_land )
	VALUES ('nordisch', 'Norwegen');
INSERT INTO t_land (religion, heutiges_land )
	VALUES ('nordisch', 'Finnland');
INSERT INTO t_land (religion, heutiges_land )
	VALUES ('nordisch', 'Dänemark');
INSERT INTO t_land (religion, heutiges_land )
	VALUES ('nordisch', 'Deutschland');

--ägyptisch

INSERT INTO t_land (religion, heutiges_land )
	VALUES ('ägyptisch', 'Ägypten');

-- griechisch

INSERT INTO t_land (religion, heutiges_land )
	VALUES ('griechisch', 'Griechenland');
INSERT INTO t_land (religion, heutiges_land )
	VALUES ('griechisch', 'die Türkei');

--sumerisch

INSERT INTO t_land (religion, heutiges_land )
	VALUES ('sumerisch', 'Irak');
INSERT INTO t_land (religion, heutiges_land )
	VALUES ('sumerisch', 'Syrien');

--römisch

INSERT INTO t_land (religion, heutiges_land )
	VALUES ('römisch', 'Italien');

SELECT * FROM t_land;


@C:\sv_projekt\skripte\t_taetigkeit.sql