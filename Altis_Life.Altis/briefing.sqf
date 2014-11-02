waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["team","Allgemeines"];
player createDiarySubject ["serverrules","Serverregeln"];
player createDiarySubject ["policerules","Bußgeldkatalog"];
player createDiarySubject ["illegalitems","Illegales"];
player createDiarySubject ["safezones","Rebellen Insel"];
player createDiarySubject ["controls","Steuerung"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];

*/

	
	player createDiaryRecord["team",
	["Homepage und Teamspeak",
		"<br />"
		+ "Unsere Homepage findet ihr unter folgender Addresse:"
		+ "<br />"
		+ "www.german-impulz.com"
		+ "<br /><br />"
		+ "Teamspeak3: 178.33.77.80:2138"
	]
];
	
	player createDiaryRecord ["serverrules",
		[
			"Wichtige Regeln", 
				"
				Folgendes kann nach individueller Betrachtung eines Admins zu einem Kick bzw. zu dem permanenten Ausschluss (Ban) aus dem Spiel führen.<br/><br/>

				1. Jeder Polizist hat seine Uniform als Erkennungszeichen zu tragen<br/>
				1. Bei diesem Server handelt es sich um ein ROLEPLAY GAME, Verstöße gegen das Prinzip werden geahndet. Bewusster Suizid / Spielabbruch in brenzlichen Situationen wie Gefängnis, Festnahme, Tazer, Gefecht etc. kann zum permanenten Ausschluss führen.<br/>
				2. Items duplizieren und jegliche Aenderung des Geldes, Status usw. auf illegale Weise ist verboten und wird mit einem permanenten Ban geahndet.<br/>
				3. Benutzung von gehackten Items. Falls du auf gehackte Items triffst bzw. dir ein Spieler verdächtig erscheint, wende dich bitte sofort an einen Admin.<br/>
				4. Jegliche Nutzung von Duplizierung oder Hacks. Benutzung führt zwangsläufig zur Überführung durch Logs und damit zum permanenten Ausschluss.<br/><br/>
				"
		]
	];


	player createDiaryRecord ["serverrules",
		[
			"Permanenter Ausschluss", 
				"
				Gründe fuer die permanente Sperre: <br/><br/>
				
				1. Hacking<br/>
				2. Wiederholte Kamikazeangriffe mit Flugkörpern.<br/>
				3. Wiederholter Verstoß gegen das Rollenspiel<br/>
				4. Duping<br/>
				5. Ständiges Blockieren von Eingängen oder wichtigen Einrichtungen, Händlern, Verarbeitungen etc.<br/>
				6. Rassistische Äußerungen im Chat oder Voicechat<br/>
				7. Extreme Beleidigung anderer Mitspieler, Admins oder Regierungsmitglieder<br/>
				8. Anderen Personen, vor allem Admins und Polizisten nicht mit dem nötigen Respekt entgegen gekommen.<br/>
				9. Spam<br/>
				10. Mehr als 3x gekickt oder von einem Admin verwarnt worden.<br/><br/>
				"
		]
	];
		
		
	player createDiaryRecord ["serverrules",
		[
			"StVo", 
				"
				Folgende Regeln gelten im Verkehr:<br/><br/>
				
				1. Generell gilt die (deutsche) StVo.<br/>
				2. Besonders zu beachten sind dabei die Schilder auf der Karte, insbesondere Geschwindigkeitsbegrenzungen.<br/>
				3. Das Rammen von anderen Fahrzeugen mit der Absicht auf eine Explosion ist verboten. Ein Fahrzeug darf nicht als Waffe dienen.<br/>
				4. Das Stehlen eines Fahrzeugs nur um es absichtlich zu zerstören oder eine Kamikazeaktion durchzuführen ist verboten.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Kommunikation", 
				"
				Folgendes kann je nach Ansicht des Admins zu einem Kick bzw. bis zum permanenten Ausschluss aus dem Spiel führen.<br/><br/>
				
				1. Abspielen von Musik in einem Channel.<br/>
				2. Rassistische Äußerungen im Chat oder Voice<br/>
				3. Extreme Beleidigung anderer Mitspieler, Admins oder Regierungsmitglieder<br/>
				4. Uebertrieben vulgaere Sprache<br/>
				5. Spam in Chat Channels.<br/>
				6. Teamspeak Teilnahme, nur um Gegner auszulauschen oder an Positionsdaten und andere Infos zu gelangen.<br/>
				7. Teamspeak ist freiwillig! Erleichtert aber enorm die Organisation und Verständigung innerhalb einzelner Gruppierungen.<br/>
				8. Auf dem Teamspeakserver gibt es nicht umsonst verschiedene Räume. Bei Teilnahme bitte dementsprechend aufhalten. Polizisten in den Polizeiräumen, Zivilisten in den zivilen Bereichen.<br/>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Rebellen Insel",
				"
				Die Rebellen Insel gilt als SafeZone. In diesem Bereich herrscht totales Schussverbot! Zuwiderhandlungen müssen den Admins gemeldet werden.<br/><br/>
					
				Keine Schießereien!<br/>
				Doch vorsicht! Sie gilt nicht als Zufluchtsort für gesuchte Verbrecher. Im Ernstfall ist die Polizei dazu befugt, auch auf der Insel das Gesetz durchzusetzen.<br/>
				Waffen müssen immer im Holster sein!<br/>
				Keine Überfaelle und andere Verbrechen auf der Insel!<br/>
				Drogenkonsum und -besitz in Mengen für den eigenen Gebrauch sind auf der Insel LEGAL!<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Umgang und Rechte gegenüber der Polizei", 
				"
				1. Polizisten müssen vor Durchsuchungen einen konkreten Verdacht äußern.<br/>
				2. Das Behindern von Polizeieinsaetzen ist strafbar.<br/>
				3. Die meisten Polizisten sind nicht bestechlich, ein Angebot seitens der Zivilisten ist aber rollenspieltechnisch erlaubt und wird bei guter Umsetzung befürwortet.<br/>
				4. Die Polizei-Hauptquartiere (HQs) sind für Zivilisten ohne Erlaubnis Sperrgebiet.<br/>
				5. Die Polizei darf das Gebiet durchstreifen auf der Suche nach Kriminellen Ereignissen, Verbrechen und verlassenen Fahrzeuge.<br/>
				6. Nachdem man in einer Auseinandersetzung mit den Rebellen gefallen ist, darf man 15 Minuten lang nicht an den Tatort zurückkehren.
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Strafkatalog", 
				"
				Geschwindigkeitsvorschrift: <br/>
				Innerorts: 50 km/h <br/>
				Auserorts: 120 km/h <br/>
				Safezonen: 30 km/h <br/>
				Außerorts: zugelassene maximal Geschwindigkeit des Fahrzeugs <br/>
				Go'Kart Nutzung im oeffenlichen Straßenverkehr ist verboten! 25000$ + einzug vom Fahrzeug. <br/>
				
				Tankstellenraub,25000<br/>
				Überfahren mit Todesfolge,10000 Mit Gefängnisstrafe 15 Min<br/>
				Mord,75000 Mit Gefängnisstrafe 25 Min<br/>
				Gefängnisflucht,100000 Mit Gefängnisstrafe 30 Min<br/>
				Raub,150000]};<br/>
				Versuchter Raub,50000<br/>
				Versuchter Autodiebstahl,5000<br/>
				Verwenden illegaler Sprengstoff,10000 Mit Gefängnisstrafe 10 Min<br/>
				Raub/Diebstahl,50000<br/>
				Entführung,100000 Mit Gefängnisstrafe 20 Min<br/>
				Versuchte Entführung,50000<br/>
				Diebstahl,25000<br/>
				Fahrerflucht,25000<br/>
				Drogenbesitz,150000 Mit Gefängnisstrafe 20 Min<br/>
				Versuchter Drogenhandel,50000<br/>
				Drogenhandel,150000<br/>
				Handel mit exotischen Gütern,50000 Mit Gefängnisstrafe 20 Min<br/>
				Fahren ohne Führerschein,10000<br/>
				Versuchter Diebstahl Fahrzeugs,15000<br/>
				Diebstahl/Führen e.fremden Zivilfahrzeugs,25000<br/>
				Fahren ohne Licht,5000<br/>
				Überhöhte Geschwindigkeit,11500<br/>
				Gefährliche Fahrweise,15000<br/>
				Versuchter Diebstahl e.Polizeifahrzeugs,25000<br/>
				Landen in einer Flugverbotszone,30000<br/>
				Fahren von illegalen Fahrzeugen,20000 + Fahrzeug Abschleppen<br/>
				Unfallverursacher/Fahrerflucht nach Unfall,75000 + Fahrzeug Abschleppen<br/>
				Fahrerflucht vor der Polizei,45000<br/>
				Überfahren eines Einwohners,70000 Mit Gefängnisstrafe 25 Min<br/>
				Illegale Strassensperren,100000 + Fahrzeuge Abschleppen<br/>
				Widerstand gegen die Staatsgewalt,35000<br/>
				Laengerer Widerstand gegen die Staatsgewalt,35000 Mit Gefängnisstrafe<br/>
				Nicht befolgen e.pol.Anordnung,50000<br/>
				Beamtenbeleidigung,2000<br/>
				Belästigung eines Polizisten,5000<br/>
				Betreten der pol.Sperrzone,15000<br/>
				Wiederholtes Betreten der pol.Sperrzone,15000 Mit Gefängnisstrafe 15 Min<br/>
				Töten eines Polizisten,80000 Mit Gefängnisstrafe 30 Min<br/>
				Beschuss auf Polizei/Beamte/Eigentum,35000<br/>
				Zerstörung von Polizeieigentum,150000<br/>
				Drogendelikte,150000<br/>
				Waffenbesitz ohne Lizenz,45000<br/>
				Mit gez.Waffe durch Stadt,25000<br/>
				Besitz einer verbotenen Waffe,75000<br/>
				Schusswaffengebrauch innerhalb Stadt,100000 Mit Gefängnisstrafe 20 Min<br/>
				Geiselnahme,85000<br/>
				Überfall auf Personen/Fahrzeuge,50000<br/>
				Bankraub,250000 Mit Gefängnisstrafe 25 Min<br/>
				Mord,120000 Mit Gefängnisstrafe 30 Min<br/>
				Aufstand,45000<br/>
				Zweifacher Aufstand,90000 Mit Gefängnisstrafe 20 Min<br/>
				Angriff durch Rebellen,35000<br/>
				Angriff/Belagerung von Hauptstädten,170000<br/>
				Vers.Landung in einer Flugverbotszone,25000<br/>
				Fliegen/Schweben unterhalb 150m ü.Stadt,20000<br/>
				Ausbruch aus dem Gefaengnis,100000 Neue Gefängnisstrafe 20 Min<br/>
				Fliegen ohne Fluglizenz,50000<br/>
				Dauerhaft störendes Hupen,50000<br/>
				Wurde geblitzt ueber 10 kmh,7500<br/>
				
			    <br/> <br/>
				Die Polizei behält sich vor den Strafkatalog jederzeit zu ändern. Die Änderung tritt dann mit den nächsten Straftaten in Kraft.
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Zentralbank",
				"
				1. Ein Bankraub hat oberste Prioritaet. Kleinere Vergehen sollten bei einem Bankraub ignoriert werden und man sollte sofort zur Bank eilen.<br/>
				4. Tazer ist immer erste Wahl. Nur im absoluten Notfall sollte scharfe Munition eingesetzt werden.<br/>
				5. Die Polizei darf nicht blind auf die Bank schießen.<br/>
				6. Die Polizei sollte als erstes sämtliche Einwohner aus dem Gebiet evakuieren.<br/>
				7. Jeder Einwohner, der sich der Polizei in den Weg stellt, gilt als Komplize und wird verhaftet.<br/>
				8. DIE ZENTRALBANK DARF NICHT (!!!) AUSGERAUBT WERDEN, WENN KEINE POLIZISTEN ONLINE SIND!!!! erst ab 5 POLIZISTEN!!!!!<br/>
				9. DIE ZENTRALBANK DARF NUR (!!!) EINMAL ALLE 6 STUNDEN ÜBERFALLEN WERDEN!!!!<br/>
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Fahrzeuge und Abschlepprecht", 
				"
				1. Einigermaßen vernünftig geparkte Fahrzeuge (beispielsweise auf Parkplätzen) sollten nicht sofort eingezogen werden.<br/>
				2. Fahrzeuge, die verlassen, kaputt oder ungebraucht wirken, dürfen eingezogen werden.<br/>
				3. Boote muessen vernünftig an der Kueste abgestellt werden.<br/>
				4. Falls ein Fahrzeug nach einer gewissen Zeit immernoch am selben Ort steht, darf es eingezogen werden.<br/>
				5. Das Einziehen von Fahrzeugen ist wichtig. Es optimiert den Server und reduziert Lag.<br/>
				6. Bei Unsicherheit das Fahrzeug durchsuchen, den Halter feststellen und ihm eine Nachricht schreiben. <br/>
				7. Wichtig: Sobald ihr euch als Zivilist weiter als 300m von eurem Fahrzeug entfernt, wird das Fahrzeug zur Serveroptimierung durch einen Skript automatisch eingezogen, wenn kein anderer Spieler in der Nähe ist.<br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Verhaftung, Strafzettel und Belohnungen",
				"
				Verhaftet werden Kriminelle,die eine Gefahr für sich und andere darstellen.<br/><br/>

				1. Dem Verdächtigen muss immer gesagt werden, weshalb er verhaftet wird.<br/>
				2. Ist ein Verdächtiger auf der Liste der gesuchten Verbrecher, hat er trotzdem das Recht auf eine Verhaftung. Es sollte nur im Notfall scharf geschossen werden.<br/><br/>

				Strafzettel gelten als Verwarnung. Wenn jemand das Gesetz bricht, aber sonst keine Gefahr darstellt, kriegt er ein Ticket.<br/><br/>

				1. Strafzettelpreise sind den Umständen anzupassen..<br/>
				2. Verweigerung der Zahlung eines Strafzettels ist Grund zur Verhaftung.<br/>
				3. Sollte ein Hinweis aus der Bevölkerung kommen, welcher zur Verhaftung eines Verdächtigen führt, dann ist der Hinweisgeber mit 1/4 der erhaltenden Belohnung zu vergüten.<br/><br/>
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Waffenrecht", 
				"
				Polizisten dürfen Einwohnern keine Waffen geben! Ebenso ist es Spendern nicht erlaubt, im DonatorShop Waffen für andere zu kaufen. Wer erwischt wird, riskiert einen Bann.<br/><br/>

				1. Den Einwohnern von Altis ist es NUR erlaubt Pistolen (und die PDW) zu tragen, wenn Sie die entsprechende Lizenz bei sich führen.<br/>
				2. Jede andere Waffe ist für Zivilisten illegal.<br/><br/>
				3. Einwohner dürfen innerhalb von Städten nur mit einer Waffe im Holster (2x STRG) oder gesenkter Waffe herumlaufen.<br/>
				4. Die Waffe darf außerhalb einer Stadt zu Selbstverteidigungszwecken im Anschlag sein.<br/>
				5. Richtet sich die Waffe eines Zivilisten auf die Polizei ist diese befugt, nachdem sie den Zivilisten darauf hingewiesen hat, das (Tazer-)Feuer zu eröffnen. <br/>
				"
		]
	];	
/*	
player createDiaryRecord ["policerules",
		[
			"Polizeisturm / Razzia",
				"
				Eine Razzia / Polizeisturm dient der Festnahme von Verbrecherbanden.<br/><br/>

				1. Saemtliche Personen innerhalb eines Raid Areals duerfen festgehalten und durchsucht werden. Falls nichts illegales gefunden wird, muessen diese jedoch wieder freigelassen werden.<br/>
				2. Beim Fund von Illegalem darf nach dem vorgegeben Schema Verhaftung vorgegangen werden.<br/>
				3. Toedliche Gewalt und scharfe Munition darf nur in extrem Situationen angewendet werden.<br/>
				4. Sobald das Raid Areal gesaeubert ist, muessen saemtliche Regierungsmitglieder das Areal verlasssen.<br/>
				5. Nach erfolgreichem Raid kann 20Mins nichtmehr derselbe Ort geraidet werden.<br/>
				6. Auch wenn der Raid fehlschlaegt muss 20Mins auf den naechsten gewartet werden.<br/>
				9. Verstaerkung ist legal.<br/><br/>

				Camping heisst das aufhalten von einer Person anderselben Stelle fuer eine laengere Zeit.<br/><br/>

				1. Checkpoints bewachen zaehlt nicht als camping. Lese Checkpoints.<br/>
				2. Es ist Regierungsmitgliedern nicht erlaubt stundenlang am selben Ort zu beobachten und dieselbe Stelle zu kontrollieren.<br/><br/>
				"
		]
	];
	*/

	player createDiaryRecord ["policerules",
		[
			"Tödliche Gewalt",
				"
				1. Tödliche Gewalt ist nur zur Verteidigung des eigenen Lebens, das eines Polizisten oder eines Einwohners legal. Als erstes sollte es immer mit nicht tödlicher Gewalt versucht werden.<br/>
				2. Fehlverhalten führt zu Ausschluss aus der Regierung, ein polizeilicher Amoklauf oder ein Ausnutzen der Obrigkeit zum permantenten Bann.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Teamspeak Regeln",
				"
				1. Als Polizist ist die Teilnahme am Teamspeak Pflicht.<br/>
				2. In den Copräumen dürfen sich neben Admins nur POLIZISTEN aufhalten.<br/>
				3. Rassistische Äußerungen im Chat oder Voicechat sind absolut verboten. Als Polizist repräsentiert man den Staat.<br/>
				4. Beleidigung anderer Mitspieler, Admins oder Regierungsmitglieder sind verboten (siehe 3.).<br/>
				5. Polizisten müssen auf eine gehobene und angemessene Sprache zurueckgreifen. <br/>
				6. Bitte bedenkt, dass für Zivilisten der Teamspeak keineswegs Pflicht ist. Sprecht sie in erster Linie im Spiel an.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["illegalitems",
		[
			"Rebellen Regeln",
				"
				Ein Rebell ist gegen das System. Er versucht den autoritären Organen die Stirn zu bieten.<br/><br/>
				1. Es sollte eine Gang geformt werden. Eine Person kann alleine für sich oft nicht viel bewegen.<br/>
				2. Auch Rebellen haben sich an die Serverregeln zu halten.<br/>
				3. Auf Anfrage richten wir auch gerne für beständige Gangs seperate Teamspeakräume ein, um die Kommunikation zu erleichtern. <br/>
				5. Bitte vergesst besonders als Rebell den Rollenspielaspekt nicht. Eine Umsetzung macht als Rebell oft sehr viel Spaß.<br/>
				6. Nachdem man in einer polizeilichen Auseinandersetzung gefallen ist, darf man 15 Minuten lang nicht an den Tatort zurückkehren. <br/>
				7. DAS AUSRAUBEN IN DER NÄHE VON ATMS UND DIREKT NACH DEM BAN IST STRIKT VERBOTEN UND FÜHRT ZUM BAN.<br/>
				"
		]
	];
	
	player createDiaryRecord ["illegalitems",
		[
			"Gang Regeln",
				"
				1. In einer Gang zu sein ist nicht illegal. Nur wenn illegale Operationen ausgeführt werden ist dies der Fall.<br/>
				2. Sich in einem Ghetto aufzuhalten ist nicht illegal.<br/>
				3. Als Gang kann man Ghettos einnehmen. Andere Gangs werden jedoch um die Herrschaft kämpfen.<br/>
				4. Das höchste Gangmitglied kann einer anderen Gang per Ingame Chat den Krieg erklären.<br/>
				5. Gangs dürfen nicht einfach Einwohner erschießen, wenn diese nicht zu einer rivalisierenden Gang gehören und in ihrem Territorium befinden.<br/>
				6. Gangs dürfen nicht einfach ohne rollenspielerischen Grund Einwohner angreifen, außer sie werden durch diese bedroht. Verletzen oder ausrauben ist allerdings gestattet.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Illegales Gebiet", 
				"
				1. Ghettos sind nicht illegal, auch das Betreten nicht.<br/>
				2. Kleinkriminelle und Gangster verschanzen sich gerne in Ghettos.<br/>
				3. Ghettos gelten als gefährlicher als normale Gebiete und besonders Mitglieder der Regierung werden dort nicht gerne gesehen.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["illegalitems",
		[
			"Illegale Fahrzeuge",
				"
				Einwohner dürfen keines der folgenden Fahrzeuge besitzen oder fahren.<br/><br/>

				1. Speedboat<br/>
				2. Hunter<br/>
				3. Alle Polizei und SEK Fahrzeuge<br/>
				4. GoKars<br/>
				5. alle bewaffneten Fahrzeuge<br/>
				5. Ifrit<br/>
				"
		]
	];
	
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Waffen & Uniformen",
				"
				Einwohner dürfen nur Pistolen mit gültigem Waffenschein mit sich führen (siehe 'Weitergabe von Waffen')<br/>
				Einwohner dürfen keine Beamtenuniformen tragen.<br/>
				"
		]
	];
	
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Gegenstaende",
				"
				Der Besitz eines der folgenden Gegenstände sowie deren Rohmittel ist strafbar:<br/><br/>
				1. Schildkröten<br/>
				2. Kokain<br/>
				4. Wed<br/>
				3. Heroin<br/>
				5. Marijuana<br/><br/>
				6. LSD<br/><br/>
				7. Uran<br/><br/>
				8. Meht<br/><br/>
				"
		]
	];

player createDiaryRecord ["controls",
	["",
		"<br />"
		+ "Z: Spieler Menü<br /><br />"
		+ "T: Fahrzeug Menü<br /><br />"
		+ "U: Auto auf- und zuschließen<br /><br />"
		+ "F: Polizeisirene (nur Polizei)<br /><br />"
		+ "Left Shift + L: Blaulicht (nur Polizei)<br /><br />"
		+ "Left Shift + R: Fesseln (nur Polizei)<br /><br />"
		+ "Left Shift + G: KO Schlagen (nur Zivilist, wird zum Ausrauben benutzt)<br /><br />"
		+ "die H: Haupttaste, die benutzt wird, um Gegenstände aufzunehmen, mit Fahrzeugen zu interagieren oder als Polizist mit Zivilisten zu interagieren.<br /><br />"
	]
];