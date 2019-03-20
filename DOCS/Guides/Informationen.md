<b>Der JTAG Hack</b>


Im Prinzip wird die Methode, die Xbox360 homebrewtauglich zu machen, fälscherlicherweise als JTAG Hack bezeichnet. Ein JTAG Port wird bei diversen elektronischen Geräten normalerweise als eine Art Debugport genutzt, um es z.B. Servicetechnikern zu erleichtern, auf das Gerät zuzugreifen und ggf. Einstellungen zu ändern oder auszulesen. Bei der Xbox360 gibt es einen solchen (physikalischen) Anschluss zwar nicht serienmäßig auf dem Mainboard, allerdings existieren dafür die Ports (also die Lötverbindungen) um eine solche Schnittstelle mit Zusatzhardware zu realisieren. Bei der Xbox360 benutzt man den JTAG Port um auf den NAND (also den internen Flash Speicher des Mainboards) zuzugreifen. Damit besteht die Möglichkeit, den NAND zu lesen, oder auch zu beschreiben.

Der JTAG Hack selbst macht eigentlich garnicht viel, außer wie gesagt den NAND zu beschreiben oder zu lesen. Allerdings hat man durch eine Lücke im 1. Bootloader (first stage bootloader) der Xbox360 die Möglichkeit ein kleines Exploit auszuführen. Dieses ist euch vlt. als XeLL bekannt. XeLL steht für "Xenon Linux Loader" und sollte es anfangs ermöglichen ein Linux-basiertes Betriebssystem auf der Konsole zu starten. Allerdings wurde XeLL im Laufe der Zeit stets weiterentwickelt, so dass nun auch andere Sachen damit möglich sind.

Simpel gesagt werden zum Ausnutzen der genannten Schwachstelle im Bootloader ungenutzte GPIO Ports (General Purpose Input/ Output) dazu verwendet, die dazugehörige Software (also das XeLL Exploit) zu starten. Diese GPIO Ports waren damals auf dem Mainboard vermutlich für andere Sachen vorgesehen, wurden aber nie realisiert und sind nun quasi "über". Diese Ports sind auf allen Mainboards ab der 2. Generation identisch, nur die Xenon-Revision (1) besitzt noch andere/weitere ungenutzte GPIO Ports. In beiden Fällen werden einige Punkte auf dem Mainboard miteinander verbunden, die später dafür sorgen, dass die Xbox XeLL starten kann.
Tiefer möchte ich hier nicht ins Detail gehen. Wer weitere Infos dazu haben möchte, findet diese vermutlich auf Free60.org.


<b>Der Reset Glitch Hack</b>


Der so genannte Reset Glitch Hack wurde am 28.08.2011 veröffentlicht und u.a. von GliGli und Tiros entwickelt. In der Durchführung unterscheidet er sich grundlegend vom JTAG Hack, die Möglichkeiten sind letztendlich aber die Gleichen. Der Reset Glitch Hack ist, anders als der JTAG Hack, auf der Hardwareebene angesiedelt. In diesem speziellen Fall wird die CPU (also die Hauptrecheneinheit) angegriffen. Das hat einen entscheidenden Vorteil gegenüber dem JTAG Hack, der reinweg auf Softwareebene stattfand: Er lässt sich durch Microsoft nicht nachträglich patchen. Somit spielt die Dashboardversion oder die Revision der Xbox360 eigentlich keine Rolle mehr. Die einzige Ausnahme ist, dass der Hack nur mit HDMI Konsolen funktioniert und somit Xenon Konsolen außenvor bleiben. Alle bisher verkaufen Xbox360 Modelle (ca. 40 Millionen) sind davon betroffen.

Um das Sicherheitssystem der Xbox360 zu überwinden, wird der Prozessortakt der CPU beim Bootvorgang verringert. Schnell wird klar, warum Xenon Konsolen hier nicht möglich werden. Am HANA Chip (der kümmert sich um das HDMI Output) wird ein von außen zugänglicher Bus (I2C) genutzt um die Teilregister im Taktgenerator neu zu beschreiben. Während des Runtertaktprozesses wird mit einem CPLD Modul zu einem bestimmten Zeitpunkt ein 20 Nanosekunden dauernder Impuls auf die Resetleitung der CPU gesendet. Dadurch wird allerdings auf unterster Ebene kein Neustart der CPU ausgeführt, sondern lediglich der Resetbefehl gesendet, wodurch sich wiederrum mit etwas Glück ein manipulierter Vergleich von Speicherbereichen (memcmp) erzwingen lässt. Auf dieser Ebene sind die Sicherheitssysteme nicht wirklich aktiv und es kann wie gesagt mit etwas Glück ein modifizierter Bootloader gestartet werden (Xell). 


<b>XeLL</b>


XeLL steht für Xenon Linux Loader und wurde bereits 2006 entwickelt. Damals war es noch möglich eine Schwachstelle in den Kernelversionen 4532/4548 auszunutzen. Dies geschah anfangs mit Hilfe des Spiels King Kong. Kurz gesagt handelte es sich um einen Shader Bug, den man mit Hilfe des King Kong Spiels ausnutzen konnte. Um den Hack auszuführen, musste man eine Kopie des King Kong Spiels anfertigen, dort XeLL injezieren und per geflashtem Laufwerk starten. Sobald das Menü von King Kong sichtbar war, lies sich die DVD Lade öffnen, ohne dass das Spiel aus ging. Nun musste man noch ein vorher prepariertes Linux Live Image in die Konsole legen und konnte somit Linux starten. (2006)

XeLL arbeitet heute im Prinzip immer noch nach dem gleichen Muster, muss nur nicht mehr über King Kong gestartet werden und ist selbst lauffähig. Die Lücke ist im Endeffekt immer noch die Gleiche wie 2006. Durch die Möglichkeit den NAND zu beschreiben kann XeLL nun allerdings direkt auf dem NAND abgespeichert werden. Dadurch lässt sich die Konsole direkt beim Einschalten in eine Art "Debugzustand" versetzen und ist so auch bereit Linux zu starten. Die Lücke die nun dafür aktiv ausgenutzt wird, befindet sich im "first stage bootloader". Mit einem Update am 11. August 2009 hat Microsoft in einem neuen Systemupdate einen aktualisierten Bootloader veröffentlicht, der die Lücke im System schließt und somit ein Ausführen von eigenen Inhalten unmöglich macht (JTAG). Der Reset Glitch Hack, der im August 2011 veröffentlicht wurde, wird dadurch nicht beeinträchtigt!

XeLL und XBReboot/FreeBoot


Nachdem bekannt wurde, dass Microsoft mit seinem Sommerupdate 2009 die Lücke schließt um Homebrew auf der Konsole auszuführen, erschien die aktuelle Version von XeLL einige Tage später. Zu diesem Zeitpunkt war es erstmals möglich eine Xbox direkt von 0 auf in den XeLL Modus zu booten. Damit war die Xbox in der Lage ca. 5 Sekunden nach dem Einschalten bereits eigene Homebrew zu starten. Ob diese Homebrewankündigung genau einen Tag nach erscheinen des Updates Zufall war oder MS vlt. im Vorfeld gewarnt wurde ist unklar. Allerdings wurden dadurch natürlich viele bzw. fast alle potenziellen JTAG Boxen unbrauchbar gemacht. 

Mit erscheinen des Hacks wurde die Homebrewgemeinde zum ersten Mal so richtig Aufmerksam auf die Xbox360, die bis dahin als ungeknackt galt. Es war zwar schon vorher möglich Sicherheitskopien auf dem System zu starten, allerdings nur durch eine modifizierte Firmware auf dem Laufwerk. Das Sicherheitssystem der Box wurde nicht umgangen.

Zuerst erschienen nur kleinere Tools wie Emulatoren und andere Spielereien, die demonstrieren sollten zu was die Xbox in der Lage ist, bis einige Monate später zuerst FreeBoot und anschl. XBReboot veröffentlicht wurden. Bei FreeBoot handelt es sich um eine modifizierte Version des Xbox 360 Betriebssystem, die auf einem zusätzlichen Modchip (Cygnos Chip) (Mittlerweile ist es auch bei FreeBoot möglich, ohne Cygnos Chip auszukommen) installiert werden konnte. Damit hatte man die Möglichkeit, zwischen dem Originalsystem und dem Chip hin- und her zu schalten.
Kurze Zeit später erschien dann mit XBReboot eine Variante, die auch auf dem internen NAND der Konsole lauffähig war und machte es überflüssig einen extra Chip einzulöten.

Bei beiden Varianten handelt es sich um eine modifizierte Version des Betriebssystems, in dem diverse Sicherheitschecks und Maßnahmen deaktiviert wurden und man so die Möglichkeit bekam, selbst im originalen Dashboard eigene Porgramme auszuführen oder bisher nicht mögliche Sachen zu machen.

Auf den ersten Blick sieht die Xbox mit aufgespieltem, gehackten XBR/FB Image genauso aus wie eine Originalkonsole, bei genauerer Betrachtung fallen die Unterschiede aber ins Auge.


Welche Möglichkeiten bieten XBReboot und FreeBoot ?


Folgende Sachen ließen sich mit den o.g. Varianten nutzen:


- Eigene Xbox360 Festplatten im 2,5" Format. 

(Keine Begrenzung mehr durch Microsoft, keine Originalfestplatten erforderlich)
Es lassen sich z.B. 500GB 2,5" Festplatten einbauen.


- Spiele lassen sich direkt von der Festplatte starten/spielen. Eine DVD wird nicht mehr im Laufwerk benötigt. 

Beispielsweise lassen sich Spiele von der internen Festplatte, aber auch von einer USB Festplatte im 2,5" oder 3,5" Format abspielen. Gleichzeitig hat man dank diversen Tools die Möglichkeit seine Spiele direkt von DVD auf die Festplatte zu rippen, um sie anschl. ohne DVD spielen zu können. Weiterhin existieren Programme um bereits im NXE (New Xbox Experience Dashboard) installierte Spiele zu einem Games On Demand Container umzuwandeln, damit diese ebenfalls keine DVD mehr benötigen. Spiele können zudem in Form einer .ISO Datei oder vollständig entpackt gestartet werden. Durch Letzteres kann man sich bei einigen Spielen einige GigaByte im Gegensatz zur ISO sparen.


- Arcade Game Demos lassen sich zur Vollversion patchen und ohne online Verbindung auf jeder X beliebigen JTAG Konsole starten

DLC Inhalte lassen sich ebenfalls damit für JTAG Konsolen freischalten

(Achtung, solange man die Spiele nicht ordnungsgemäß über Xbox Live erworben hat, ist es illegal diese zur Vollversion zu patchen!)


-Debug-/Entwicklerversionen von Arcade Games aus dem Partner.NET starten

Debugversionen von Arcadespielen laufen nicht nur auf Entwicklerkits, sondern auch auf JTAG Konsolen!


- Spiele lassen sich Regionfree patchen

Man hat z.B. die Möglichkeit ein japanisches Spiel auf seiner europäischen PAL Konsole zu spielen.


- Linux/Unix starten

Die Konsole kann mit diversen Live CDs als Linuxcomputer genutzt werden.


- Spiele DVDs können direkt auf die Xbox Festplatte gerippt werden

Mit Hilfe von z.B. XeXMenu ist man in der Lage die gesamte Spiel-DVD auf die Xbox Festplatte zu kopieren, um das Spiel anschl. ohne DVD zu spielen. FreeBoot Nutzer haben die Möglichkeit ihre XEX direkt zu patchen!


- Multi-DVD Spiele wie z.B. Final Fantasy oder Mass Effect 2 starten ebenfalls ohne DVD!

Dazu müssen lediglich alle DVD ISOs in den gleichen Ordner entpackt werden. Das jeweilige Spiel fragt vlt. kurz nach einer DVD, beginnt aber ca. 1 Sekunde später mit dem Ladevorgang, da die erforderliche Datei bereits im selben Ordner gefunden wurde.


- Direktzugriff vom PC per FTP 

Mit einigen Tools hat man die Möglichkeit Daten vom PC per FTP Verbindung auf die Xbox Festplatte zu kopieren. Hier lässt sich beispielsweise auch direkt per FTP der NAND beschreiben/überschreiben.


- Aktualisieren des Dashboards per USB

Durch Flash360 hat man beispielsweise die Möglichkeit, den NAND ohne LPT/USB Programmer direkt per USB Stick neu zu beschreiben. Entweder einzelne Blöcke, oder komplett. 


- Emulatoren/Programme/eigene Software ausführen

Alle relevanten Checks wurden entfernt, somit können beispielsweise bereits existierende Emulatoren wie SNES, MAME, etc. genutzt werden!
Erste selbstentwickelte Programme wie XeXMenu, XM360, etc. existieren bereits.


- Spiele per System-Link über Internet spielen

Mit dem 30ms Ping Limit Patch für DashLaunch 1.0 lassen sich Spiele (vorausgesetzt sie unterstützten System-Link) über Internet gegeneinander spielen. Dazu benötigt man das Programm XLink KAI. Dieses fungiert ähnlich Hamachi auf dem Computer und stellt über eine Internetverbindung ein System-Link Spiel auf die Beine. Beliebte System-Link Spiele sind u.A. Call of Duty Modern Warfare 2, BLUR, Borderlands, Halo 3. Alles Weitere findet ihr auf der Website von Team Xlink.


Welche Voraussetzungen müssen erfüllt sein ? 

Jtag:
- Konsolen Baudatum bis maximal 18. Juni 2009
- Dashboardversion/Kernel maximal 2.0.7371.0

Reset Glitch Hack:
- Alle Konsolen mit HDMI (Ausnahme: Opus-Boards) und Hana
- folgende CB-Werte dürfen nicht überschritten werden
Zephyr CB 4578
Falcon CB 5771
Jasper CB 6571

Warum lassen sich nicht alle Konsolen nutzen ? 


Durch den aktualisierten Bootloader wird jede Möglichkeit auf Homebrew zerstört. Ebenso wenig hat man die Möglichkeit seine Konsole auf eine ältere Version zurück zu patchen. Das liegt daran, dass mit jedem installierten Update eine eFuse in der CPU zerstört wird, die dafür sorgt, dass die Konsole nicht mit einer älteren Version startet.


Wie verhält es sich bei Systemupdates ? 


Systemupdates sind im Prinzip kein Problem. Es darf allerdings kein original Update installiert werden. Im besten Fall crasht nur das Update, im schlimmsten Fall ist eure Box danach nicht mehr JTAG fähig. D.h. im Endeffekt: Sobald ein Spiel ein neues Systemupdate benötigt, solltet ihr warten bis eine neue Version von XBReboot erscheint.

Angenommen ihr installiert ein Originalupdate und startet eure Xbox nicht mehr. Als XBReboot User braucht ihr euch in dem Fall aber keine Sorgen machen. Spielt einfach das letzte XBR Image wieder auf eure Konsole. FreeBoot User sollten alle Updates vermeiden, solange der R6T3 Widerstand nicht ausgelötet ist.

Aber Achtung! Mit jedem Systemupdate probiert die Xbox eine eFuse (Fuse aus dem englischen = Sicherung) zu zerstören, damit ihr (zumindest im original Dashboard) nicht die Möglichkeit habt, die Firmware zu downgraden. Die zerstörte eFuse bildet quasi eine Barriere und verhindert genau dies! XBReboot Benutzer brauchen sich hier eigentlich keine weiteren Sorgen machen, da es mit virtuellen eFuses arbeitet. Im Prinzip wird die eFuse dann in dieser speziellen FUSES.BIN zerstört, was also keinerlei Auswirkungen für euch hat, da ihr die Datei immer wieder überschreiben könnt. Im Originaldashboard (ohne virtuelle Fuses), wird die eFuse direkt in der CPU zerstört, so dass ihr keine Möglichkeit mehr habt den Prozess rückgängig zu machen.

FreeBoot User haben derzeit noch keine virtuellen Fuses, die in diesem Fall zerstört werden. Deshalb müssen alle FreeBoot Nutzer den Widerstand R6T3 auf dem Mainboard zwingend entfernen. Dieser ist normalerweise dafür zuständig die eFuses durchzubrennen. Sobald dieser fehlt, seid ihr zumindest bei normalen Updates auch auf der sicheren Seite! Der einzige Nachteil ohne R6T3 Widerstand ist, dass ihr kein original Dashboard mehr ausführen könnt. In dem Fall bekommt ihr einen E80 Systemfehler.

Für beide Varianten gilt allerdings: Sobald ihr ein Update installiert, welches eine neue Bootloader-Version installieren will, habt ihr ein Problem. Ihr könnt euch bisher noch nicht richtig gegen ein Bootloaderupdate schützen. Der so genannte first-stage-bootloader befindet sich nämlich nicht mit auf dem NAND, sondern auf einem 32kb ROM direkt in der CPU. Das Einzige was ihr machen könnt, ist, alle Updates zu vermeiden und immer auf eine aktuelle XBR/FB Version zurück zu greifen.


Brauche ich zusätzlich einen Firmwareflash ?


Ein zusätzlicher Firmwareflash ist zwar nicht notwendig, wäre aber ratsam. Ohne einen Firmwareflash könnte die JTAG Box keine Sicherheitskopien der Spiele lesen. Das liegt daran, dass die Spiele auf einem eigenen UDF Format (Disc Layout) basieren. Das Laufwerk kann in dem Fall also nur Originalspiele lesen (weil das in der Firmware so vorgesehen ist). 

Anders wäre es, wenn ihr alle entpackten Spieledaten auf eine DatenDVD brennt. Diese wird dann in einem gängigen Format gebrannt, was jedes Laufwerk versteht. Diese Discs könnten ohne Probleme gelesen werden. Falls ihr aber irgendwann mal vor habt eine SK ins Laufwerk zu legen, kommt ihr um einen Flash nicht herum.
