--@C:\sv_projekt\skripte\t_gott.sql

cl scr

SET linesize 700
SET echo ON


CREATE TABLE t_gott
(
	gott_id  			number 			CONSTRAINT pk_t_gott_id PRIMARY KEY,
	name 				varchar2(20) 	CONSTRAINT nn_t_gott_name NOT NULL,
	religion			varchar2(20) 	CONSTRAINT fk_t_gott_religion REFERENCES t_kultur(religion),
	goettergeschlecht	varchar2(20),
	geschlecht 			varchar2(20),
	kurzbeschreibung	varchar2(500)
);


-- nordische Götter	

INSERT INTO t_gott (gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	1, 'Odin', 'nordisch',	'Ase', 'männlich', 'Jörd	Höchster Gott der Asen. Überblickt von seinem Thron aus die neun Welten und lässt sich von den Raben Hugin und Munin Geheimnisse erzählen. Liebt die Frauen und die Weisheit.'
  );

INSERT INTO t_gott (gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Thor', 'nordisch', 'Ase', 'männlich', 'Sohn des Odin und Gott des Donners. Kann gut essen, trinken und raufen. Feinde zermalmt er mit seinem Hammer Mjölnir. Kämpft öfter gegen die Midgardschlange.'
  );

INSERT INTO t_gott (gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Loki', 'nordisch', 'Ase', 'männlich', 'Der listenreiche Loki ist das Kind zweier Riesen, zählt aber dennoch zu den Asen. Loki zeichnet sich vor allem durch seine Hinterlist und Loki stiehlt Freyja eine Halskettesein zwiespältiges Wesen aus. Er zeugt Feinde der Asen, den Fenriswolf, die Midgardschlange und die Todesgöttin Hel. Loki sorgt durch eine Intrige für den Tod Balders und leitet damit den Untergang des Göttergeschlechts ein.'
  );

INSERT INTO t_gott (gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Frigg', 'nordisch', 'Ase', 'weiblich', 'Frigg ist eine der wichtigsten Göttinnen der Asen und die Tochter der Erd- und Atmosphärengöttin Fjorgyn. Ihr Gatte ist der Göttervater Odin, was ihr eine herausragende Stellung unter den Asinnen verleiht. Sie hat vieles mit Freyja gemein, weshalb die beiden Göttinnen in neuzeitlichen Quellen oft gleichgesetzt werden. Frigg ist die Schutzherrin der Ehe sowie der Mutterschaft'
  );

INSERT INTO t_gott (gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Freyr', 'nordisch', 'Wane', 'männlich', NULL
  );

INSERT INTO t_gott (gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Freya', 'nordisch', 'Wane', 'weiblich', NULL
  );

INSERT INTO t_gott (gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Balder', 'nordisch', 'Ase', 'männlich', 'Schöner Sohn von Odin und Frigg. Bei allen beliebt, außer bei Loki. Balder ist der Sanftmütigste unter den Göttern. Als er durch eine List Lokis getötet wird, rückt Ragnarök näher.'
  );  

INSERT INTO t_gott (gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Hel', 'nordisch', 'Ase', 'weiblich', 'Herrscherin der Unterwelt "Helheim", Tochter des Loki und der Riesin Angbroda'
  );


INSERT INTO t_gott (gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Heimdall', 'nordisch', 'Ase', 'männlich', 'Heimdall ist der Wächter der Götter, er bewacht die Regenbogenbrücke Bifröst, die den Göttersitz Asgard mit Midgard, der Welt der Menschen, verbindet. Sein Wohnsitz ist Himinbjörg, die Himmelsburg, die sich am Rande Asgards, direkt am Fuß der Brücke, befindet.'
  );

  INSERT INTO t_gott (gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Tyr', 'nordisch', 'Ase', 'männlich', 'Tyr ist ein Sohn Odins und bekannt für seinen Mut und seine Kraft. Seine Hand wurde vom Fenriswolf, den Tyr anketten musste, abgebissen. Symbol des Gottes ist das Schwert. Gemeinsam mit Forseti ist Tyr zuständig für die Thing-Versammlungen, die Stammesversammlungen, als deren Beschützer er gilt.'
  );

  INSERT INTO t_gott (gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Bragi', 'nordisch', 'Ase', 'männlich', 'Bragi ist der Gott der Dichtkunst und der Redekunst. Er ist derjenige, der die gefallenen Helden in Walhall begrüßt. Er ist ein Sohn Odins und verheiratet mit Idun, der Göttin der Unsterblichkeit und Jugend.'
  );

  INSERT INTO t_gott (gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Idun', 'nordisch', 'Ase', 'weiblich', 'Sie bewacht die goldenen Äpfel der Jugend, von denen die Götter essen, um sich ihre Jugend und Schönheit zu erhalten, da das Asengeschlecht wie die Menschen sterblich ist.'
  );

  INSERT INTO t_gott (gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Njörd', 'nordisch', 'Wane', 'männlich', NULL
  );

  INSERT INTO t_gott (gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Skadi', 'nordisch', 'Ase', 'weiblich', NULL
  );




 -- römische Götter

 INSERT INTO t_gott (gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Jupiter', 'römisch', NULL, 'männlich', 'Jupiter ist der König der Götter. Für die Römer war er der wichtigste Gott. Als Wettergott kann er riesige Blitze schleudern. Oft wird Jupiter von einem Adler begleitet. Er ist mit der Göttin Juno verheiratet.'
  );

INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Juno', 'römisch', NULL, 'weiblich', 'Juno ist die Göttin der Familie: Sie soll die Ehe zwischen zwei Menschen sowie die Mütter beschützen. Juno ist die Ehefrau von Jupiter. Damit ist sie die Königin der Göttinnen. Sie wird meist mit einer Gans gezeigt'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Minerva', 'römisch', NULL, 'weiblich', 'Minerva ist die klügste Göttin. Sie ist die Göttin der Weisheit und Hüterin des Wissens. Außerdem ist sie die Göttin des klug geplanten Krieges. Sie wird meist von einer Eule begleitet gezeigt.'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Neptun', 'römisch', NULL, 'männlich', 'Neptun ist der Gott des Meeres. Er hat einen Dreizack, mit dem er Erdbeben auslösen und die Ozeane lenken kann. Er wohnt im Meer und ist der Bruder von Jupiter. Neptun wird oft von einem Pferd begleitet dargestellt, da er auch der Gott der Pferde ist'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Mars', 'römisch', NULL, 'männlich', 'Mars ist der Kriegsgott der Römer. Für die Römer war er der Gott der großen Schlachten, die ganz viel Schaden anrichten. Da die Römer sehr viel kämpften, war Mars für sie ein sehr wichtiger Gott. Mars trägt oft Schild, Schwert und Helm bei sich'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Venus', 'römisch', NULL, 'weiblich', 'Venus ist die Göttin der Liebe und der Schönheit. Oft trägt sie einen Spiegel bei sich. Manchmal wird Venus auch von einem Delphin begleitet dargestellt.'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Appolo', 'römisch', NULL, 'männlich', 'Apollo ist der Gott der Kunst und der Musik. Er beschützt alle Künstler. Als Gott der Kunst und Musik singt Apollo sehr gerne. Er hat oft ein Instrument dabei.'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Diana', 'römisch', NULL, 'weiblich', 'Diana ist die Göttin der Jagd und die Göttin des Mondes. Sie ist außerdem die Beschützerin der Tiere und Wälder. Als Göttin der Jagd ist sie mit Pfeil und Bogen bewaffnet. Sie wird meist von einer Hirschkuh begleitet dargestellt.'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Vulcanus', 'römisch', NULL, 'männlich', 'Vulcanus ist der Gott des Feuers und der Gott der Schmiedekunst. Er ist also ein guter Schmied. Als Gott der Schmiedekunst trägt Vulcanus auf Bildern einen Amboss, einen Hammer und eine Zange bei sich.'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Vesta', 'römisch', NULL, 'weiblich', 'Vesta ist die Göttin des Herdfeuers. Das heißt, sie beschützt das Feuer in der Küche. Aber nicht nur das, sondern auch die Feuer in den Tempeln der Römer. Sie ist außerdem dafür zuständig, dass sich alle Römer gut mit ihrer Familie verstehen.'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Merkur', 'römisch', NULL, 'männlich', 'Merkur ist der Götterbote: Er überbringt Nachrichten. Somit ist er der Gott der Reisenden und der Händler. Da er sehr schnell und flink ist, ist er aber auch der Gott der Diebe. Er trägt einen Flügelhelm und Flügelschuhe mit denen er besonders schnell reisen kann. Außerdem hat er meistens einen Beutel dabei'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Ceres', 'römisch', NULL, 'weiblich', 'Ceres ist die Erdgöttin. Sie ist zuständig für den Ackerbau und das Wachstum der Pflanzen. Die Römer beteten zu Ceres, wenn sie sich eine erfolgreiche Ernte und viel Nahrung wünschten. Außerdem ist Ceres für die Jahreszeiten zuständig'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht, kurzbeschreibung)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Pluto', 'römisch', NULL, 'männlich', 'Plutonist in derrömischen Mythologie der Gott der Totenwelt in der Erdtiefe.'
  );


-- sumerische Götter




  INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Namma', 'sumerisch', 'weiblich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'An', 'sumerisch', 'männlich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Urasch', 'sumerisch', 'weiblich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Enlil', 'sumerisch', 'männlich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Enki', 'sumerisch', 'männlich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Nanna', 'sumerisch', 'männlich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), ' Nergal', 'sumerisch', 'männlich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Ereshkigal', 'sumerisch', 'weiblich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Utu', 'sumerisch', 'männlich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Inanna', 'sumerisch', 'weiblich'
  );


-- ägyptische Götter

 INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Re', 'ägyptisch', 'männlich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Osiris', 'ägyptisch', 'männlich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Isis'. 'ägyptisch', 'weiblich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Horus', 'ägyptisch', 'männlich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Seth', 'ägyptisch', 'männlich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Anubis', 'ägyptisch', 'männlich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Ptah', 'ägyptisch', 'männlich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Thot', 'ägyptisch', 'männlich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Amun', 'ägyptisch', 'männlich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Chnum', 'ägyptisch', 'männlich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Bastet', 'ägyptisch', 'weiblich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Hathor', 'ägyptisch', 'weiblich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Nut', 'ägyptisch', 'weiblich'
  );

   INSERT INTO t_gott(gott_id, name, religion, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Sachmet', 'ägyptisch', 'weiblich'
  );


-- greiechische Götter

INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Zeus', 'griechisch', 'Olympionike', 'männlich'
  );

INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Hera', 'griechisch', 'Olympionike', 'weiblich'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Hades', 'griechisch', 'Olympionike', 'männlich'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Poseidon', 'griechisch', 'Olympionike', 'männlich'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Hestia', 'griechisch', 'Olympionike', 'weiblich'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Demeter', 'griechisch', 'Olympionike', 'weiblich'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Ares', 'griechisch', 'Olympionike', 'männlich'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Hephaistos', 'griechisch', 'Olympionike', 'männlich'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Artemis', 'griechisch', 'Olympionike', 'weiblich'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Apollon', 'griechisch', 'Olympionike', 'männlich'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Hermes', 'griechisch', 'Olympionike', 'männlich'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Athene', 'griechisch', 'Olympionike', 'weiblich'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Persephone', 'griechisch', 'Olympionike', 'weiblich'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Aphrodite', 'griechisch', 'Olympionike', 'weiblich'
  );

  INSERT INTO t_gott(gott_id, name, religion, goettergeschlecht, geschlecht)
  VALUES 
  (
  	(SELECT max(gott_id) + 1 FROM t_gott), 'Dionysos', 'griechisch', 'Olympionike', 'männlich'
  );


@C:\sv_projekt\skripte\t_land.sql