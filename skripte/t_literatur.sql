--@C:\sv_projekt\skripte\t_literatur.sql

cl scr

SET echo ON


CREATE TABLE t_literatur
(
	buch_id 	number			CONSTRAINT pk_t_literatur_id PRIMARY KEY,
	titel 		varchar2(200)	CONSTRAINT nn_t_literatur_titel NOT NULL,
	autor		varchar2(100)
);


INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(1, 'Die nrdischen Götter - Über Asen & Wanen', NULL); -- alle nordischen

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(2, 'A short history of the God Odin', 'Anatoly Liberman'); -- odin

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(3, 'Thor: Die Asgard-Saga', NULL);	--Thor

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(4, 'Loki der Beweger der Geschichten', 'Yvonne Bonnetain');	-- Loki

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(5, 'Ordbog over det gamle norske sprog. Omarbeidet, forøget og forbedret udgave', 'Johan Fritzner');	-- Frigg

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(6, 'Freyr, Freya und Gerdha', 'Ernst Siecke');	-- Freyr und Freya

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(7, 'Die Wikinger', 'Claudia Bank');	-- Balder

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(8, 'Deutsche Mythologie', 'Jacob Grim');	--Hel

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(9, 'Heimdallr – der rätselhafte Gott. Eine philologische und religionsgeschichtliche Untersuchung', 'Sebastian Cöllen'); --Heimdal

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(10, 'Götter und Mythen der Germanen', 'René M. Dolorez');	-- Tyr, Bragi, Idun

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(11, 'Kulturhistorisk leksikon for nordisk middelalder', 'E. F. Halvorsen'); -- Njörd

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(12, 'Wikinger-nordische Göttin Skadi', NULL); -- Skadi

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(13, 'Römische Mythologie', NULL);		-- ALLE ROEMISCHE GOETTER

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(14, 'Religion und Kultus der Römer', 'Georg Wisowa'); --ALLE ROEMISCHE

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(15, 'De natura deorum', 'Marus Tullius Cicero'); --Jupiter
	
INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(16, 'Iuno - Der neue Pauly', 'Fritz Graf');		--Juno

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(17, 'Minerva - Der neue Pauly', 'Anne Ley');	-- Minerva

	INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(18, 'Neptunus - Der neue Pauly', 'C. Robert Phillips'); --Neptun

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(19, 'Der Krieg und die Liebe - Untersuchungen zur römischen Venus', 'Marion Bolder - Boos');	--Venus

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(20, 'From Artemis to Diana: the goddess of man and beast', 'Tobias Fischer - Hansen');	-- Diana

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(21, 'Der Gott Vulkan auf provinzialrömischen Reliefs', 'Frank Brommer'); -- Vulcanus

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(22, 'Vesta - Der neue Pauly', 'C. Robert Phillips'); -- Vesta

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(23, 'Ceres - Der kleine Pauly', 'Werner Eisenhut');	-- Ceres

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(24, 'Sumerer: Eine fesselnde Einführung in die antike sumerische Geschichte, die sumerische Mythologie und Mesopotamien zu Zeiten der sumerischen Zivilisation', NULL); -- ALLE SUMERISCHE

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(25, 'Encycloedia of Gods', 'Michael Jordan'); --Namma

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(26, 'Gods, demons and symbols of ancient Mesootamia', 'Jeremy Black'); -- An

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(27, 'History begins at Sumer', 'Samuel Noah Kramer'); -- Enlil

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(28, 'Der Gott Ea/Enki in der akkadischen Überlieferung', 'Hannes Dietmar Galter');	-- Enki

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(29, 'Altorientalische Vorstellungen von der Unterwelt. Literatur- und religionsgeschichtliche Überlegungen zu »Nergal und Ereškigal«', 'Manfred Hutter'); --Nergal

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(30, 'Inanna, Queen of Heaven and Earth', 'Diane Wolkenstein'); -- Inanna

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(31, 'Lexikon der ägyptischen Religionsgeschichte', 'Hans Bonnet'); -- ALLE ÄGYTISCHE

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(32, 'Re - Kleines Lexikon der Ägytologie', 'Wolfgang Helck'); -- Re

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(33, 'Tod und Jenseits im Alten Ägypten', 'Jan Assmann'); -- Osiris

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(34, 'Isis: Die Geschichte der Göttin von der Steinzeit bis heute', 'Harry Eilenstein'); --Isis

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(35, 'Ägyptische Mythen und Legenden', ' Günther Roeder');	--Horus

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(36, 'Zur Herkunft des Seth von Avaris', 'Manfred Bietak'); -- Seth

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(37, 'Der Götterglaube im alten Ägypten', 'Hermann Kees'); -- Anubis

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(38, 'The God Ptah', 'Maj Sandman-Holmberg'); -- Ptah

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(39, 'Thoth the Hermes of Egypt', 'Patrick Boylan'); --Thot

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(40, 'De Jove Ammone questionum seciem', 'Ferdinand Tönnies'); -- Amun

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(41, 'Der Gott Chnum', 'Ahmad Muhammad Badawi'); --Chnum

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(42, 'Die Götter und Mythen Ägypten', 'Veronica Ions'); --Bastet

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(43, 'Der eine und die Vielen: ägyptische Gottesvorstellungen', 'Erik Hornung'); --Hathor

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(44, 'The Mythology of Nut and the Birth of Ra', 'Ronald Wells'); -- Nut

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(45, 'Ägyten: die Welt der Pharaonen', 'Regine Schulz');	--Sachmet

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(46, 'Zeus und Co.', 'Michl Zirk'); --Zeus

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(47, 'Als Zeus noch auf dem Ida thronte', 'Arn Strohmeyer'); -- zeus

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(48, 'Ilias', 'Homer'); -- Hera, Ares, Artemis, Apollon, Athena

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(49, 'Theogonie', 'Hesiod');	-- Hera, Hestia, Demeter

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(50, 'Odyssee', 'Homer'); -- Hades, Poseidon, Ares

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(51, 'Die Trachinierinnen', 'Sophokles'); -- Hades

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(52, 'Historien', 'Herodot'); -- Poseidon

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(53, 'Kratylos', 'Platon'); -- Hestia

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(54, 'De astronomia', 'Hyginus'); --Demeter

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(55, 'Äneis', 'Vergil'); -- Hephaistos

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(56, 'Prometheus', 'Aischylos'); -- Hephaistos

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(57, 'Hellenika', 'Xenophon');	-- Artemis

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(58, 'Apollon Kithadoros', 'Martin Flashar');	-- Apollon

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(59, 'Das Singen des kleinen Hermes und des Silen', 'Gesine Manuwald'); -- Hermes

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(60, 'Athena', 'Georg Ferdinand Dümmler'); -- Athena

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(61, ' Die Mythologie der Griechen. Die Götter- und Menschheitsgeschichten.', 'Karl Kerényi'); --Persehone

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(62, 'Aphrodite. Herrin des Krieges, Göttin der Liebe'. 'Martina Seifert'); --Aphrodite

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(63, 'Mythos Aphrodite', 'Mario Leis'); -- Aphrodite

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(64, 'Dionysos: Urbil des unzerstörbaren Lebens', 'Karl Kerényi'); -- Dionysos

INSERT INTO t_literatur(buch_id, titel, autor)
	VALUES(65, 'Dionysos', 'Renate Schlesier'); -- Dionysos



 @C:\sv_projekt\skripte\t_gott.sql
