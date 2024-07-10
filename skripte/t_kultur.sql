--@C:\sv_projekt\skripte\t_kultur.sql

cl scr	

SET echo ON

CREATE TABLE t_kultur
(
	religion 	varchar2(20)		CONSTRAINT pk_t_kultur_religion PRIMARY KEY
);


INSERT INTO t_kultur (religion)
	VALUES 
		('nordisch');
INSERT INTO t_kultur (religion)
	VALUES 
	 	('ägyptisch');
INSERT INTO t_kultur (religion)
	VALUES 	 	
	 	('griechisch');
INSERT INTO t_kultur (religion)
	VALUES 	 	
	 	('sumerisch');
INSERT INTO t_kultur (religion)
	VALUES 	 	
	 	('römisch');

SELECT * FROM t_kultur;


@C:\sv_projekt\skripte\t_literatur.sql