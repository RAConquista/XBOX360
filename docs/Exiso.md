
Skip to content
 Switch to mobile version
 
Search
Pull requests
Issues
Marketplace
Explore
 
Sign out
1
0 0 ljmellor/exisolinux
 Code  Issues 0  Pull requests 0  Projects 0  Wiki  Insights
exisolinux/extract-xiso/
@ljmellor
ljmellor Delete info.txt
Latest commit 3b372d3  on 21 Oct 2018
Type	Name	Latest commit message	Commit time
..		
libftp-5.0.1.modified.by.in	Delete info.txt	6 months ago
visual_c++_project	Add extract-xiso binaries	6 months ago
win32	Add extract-xiso binaries	6 months ago
LICENSE.TXT	Add files via upload	6 months ago
Makefile	Add files via upload	6 months ago
README.TXT	Add files via upload	6 months ago
extract-xiso	Add extract-xiso binaries	6 months ago
extract-xiso.c	Add files via upload	6 months ago
released_version_is_2.7.0	Add extract-xiso binaries	6 months ago
 README.TXT
extract-xiso v2.7.0 by somski

Added XGD3 support

extract-xiso v2.6.2 by Aiyyo

Fix extraction bug

extract-xiso v2.6.1 by Aiyyo

Fix -l (list files in iso) bug (My mistake).

extract-xiso v2.6 by Aiyyo

Added new command line switch (-s -> skip $SystemUpdate folder).
Try to create destination directory and display progressbar during the extraction.

extract-xiso v2.5

Added a few patches from sourceforge, fixed some bugs.

extract-xiso v2.4b2 by in:

Fixed some buffering problems in the ftp library and added beta support for
CD/DVD burning on MacOS X.  run the program with -h to see the command-line
options for burning.  I also added progress callbacks for UI implementors, of
course you'll have to be writing your UI in C or you won't be able to use
this feature.

extract-xiso v2.3 by in <in@fishtank.com>

This is a maintenance release only, fixed a bug in the path generation code.
Thanks to Hydra for submitting a fix.

extract-xiso v2.2 by in <in@fishtank.com>

New in this version:

*	Finally ported the code to Win32 as a command line tool!
*	Added automatic media check patching during xISO creation.
*	Fixed a couple of minor bugs and made a few optimizations.

Please read the following carefully as I want to answer some support requests
I get fairly commonly and let everyone know a few things that might be helpful.

First, I hardly ever do any programming on the PC.  I *think* I've got the code
ported pretty cleanly and it's worked in my testing, but there may be some bugs.
If you find that something doesn't work correctly, *PLEASE PLEASE* email me and
let me know.  If you can, please include the specific steps I would need to
take to recreate the program.  I'll do what I can to get it corrected.

Ok, now for some answers to some common questions:

ALL these answers assume you're running a modded xbox with an FTP capable
version of EvoX running as your dashboard.  extract-xiso assumes a default
username and password of "xbox" and "xbox" respectively.

Q:	I purchased an XBox DVD game and am worried that it might become scratched.
	How do I make a single legal backup so that I can protect my investment?
	
A:	One way to do this is to use an ftp client to copy the files from the
	D:\ drive of your XBox to your hard disk, say to a folder called:
	
	C:\backup		(unix and mac users think /backup)
	
	Then you would run:
	
	PC Users:			exiso.exe -c C:\backup
	Mac/Unix Users:  	extract-xiso -c /backup
	
	this would create a file in the local directory called backup.iso which
	you can then burn to a DVD.
	
Q:	Ok, that's great, but doesn't extract-xiso support builtin ftp?

A:	Yep.  Assume your xbox is at xbox.mydomain.com, or 10.1.2.3 if you don't
	have DNS support.  Then you would do:
	
	PC Users:			exiso.exe -f xbox.mydomain.com -c d:\ backup.iso
	Mac/Unix Users:		extract-xiso -f xbox.mydomain.com -c /d backup.iso
	
	An alternate form if you have a different ftp username and password might
	be:
	
	extract-xiso -u username -p password -f 10.1.2.3 -c /d /backupdir/backup.iso
	
	Note that there really isn't much of a difference between the PC version
	of this tool and the unix version.  With respect to specifying paths on
	the xbox, you can either use unix style paths or DOS style paths, it
	shouldn't matter.  What this means is that F:\GAMES\ on the xbox can also be
	thought of (or written ) as /f/games/.

Q:	How do I extract files from an xISO I backed up?

A:	The command lines for extraction are listed later in this document in
	other tutorials, and you can always just run the tool with no arguments
	for help text.  Read on!
	
Q:	What's the point of "rewriting" xISO's?

A:	Let's say you formerly created your backup with another tool, such as one
	that emulates GDFIMAGE.EXE.  Well what you will have then is an xISO that
	is *maximally* inefficient.  You can read below to see just what I mean by
	that.  Naturally you want your DVD to perform as well as it can so that
	when you restore your game it plays as fast as possible.
	
	To rewrite the xISO as an optimized xISO then, you would issue:
	
	extract-xiso -r backup.iso
	
	This will do its magic and you will be left with two files, backup.iso,
	which is now the optimized (b
Zeichenbeschränkung: 5000
Zum Inhalt springen
 Wechseln Sie zur mobilen Version
 
Suche
Anfragen abrufen
Probleme
Marktplatz
Erkunden
 
Ausloggen
1
0 0 lmellor / exisolinux
 Code-Probleme 0 Pull-Anfragen 0 Projekte 0 Wiki-Einblicke
Exisolinux / Extrakt-Xiso /
@ljmellor
ljmellor Info.txt löschen
Letzte Zusage 3b372d3 am 21. Oktober 2018
Typ Name Letzte Commit-Nachricht Commit-Zeit
..
libftp-5.0.1.modified.by.in Löschen Sie info.txt vor 6 Monaten
visual_c ++ _ project Extract-xiso-Binaries hinzufügen vor 6 Monaten
win32 Fügen Sie Binärdateien für extract-xiso hinzu
LICENSE.TXT Dateien über Upload hinzufügen vor 6 Monaten
Makefile Dateien über Upload hinzufügen vor 6 Monaten
README.TXT Dateien über Upload hinzufügen vor 6 Monaten
extract-xiso Extract-xiso-Binärdateien hinzufügen vor 6 Monaten
extract-xiso.c Dateien über Upload hochladen vor 6 Monaten
release_version_is_2.7.0 Zum Hinzufügen von extract-xiso-Binärdateien vor 6 Monaten
 README.TXT
extract-xiso v2.7.0 von somski

XGD3-Unterstützung hinzugefügt

Extrakt-xiso v2.6.2 von Aiyyo

Extraktionsfehler beheben

Extrakt-xiso v2.6.1 von Aiyyo

Fix -l (list files in iso) Fehler (Mein Fehler).

Extrakt-xiso v2.6 von Aiyyo

Neuer Befehlszeilenschalter hinzugefügt (-s -> $ SystemUpdate-Ordner überspringen).
Versuchen Sie, während der Extraktion ein Zielverzeichnis zu erstellen und die Fortschrittsleiste anzuzeigen.

Extrakt-Xiso v2.5

Einige Patches von Sourceforge hinzugefügt, einige Fehler behoben.

-xiso v2.4b2 von in extrahieren:

Einige Pufferprobleme in der FTP-Bibliothek behoben und Beta-Unterstützung für hinzugefügt
CD / DVD-Brennen unter MacOS X. Führen Sie das Programm mit -h aus, um die Befehlszeile anzuzeigen
Optionen zum Brennen. Ich habe auch Fortschrittscallbacks für UI-Implementierer von hinzugefügt
Natürlich müssen Sie Ihre Benutzeroberfläche in C schreiben, sonst können Sie sie nicht verwenden
Dieses Feature.

extract-xiso v2.3 von in <in@fishtank.com>

Dies ist nur eine Wartungsversion. Ein Fehler im Pfadgenerierungscode wurde behoben.
Vielen Dank an Hydra für die Abgabe eines Fixes.

extract-xiso v2.2 von in <in@fishtank.com>

Neu in dieser Version:

* Schließlich wurde der Code als Befehlszeilentool nach Win32 portiert!
* Automatisches Patches zur Medienprüfung während der xISO-Erstellung hinzugefügt.
* Einige kleinere Fehler behoben und einige Optimierungen vorgenommen.

Bitte lesen Sie die folgenden Hinweise sorgfältig durch, da ich einige Supportanfragen beantworten möchte
Ich werde ziemlich häufig und lasse jeden ein paar Dinge wissen, die hilfreich sein könnten.

Zuerst programmiere ich kaum auf dem PC. Ich glaube, ich habe den Code bekommen
ziemlich sauber portiert und es hat in meinen Tests funktioniert, aber es kann ein paar Fehler geben.
Wenn Sie feststellen, dass etwas nicht richtig funktioniert, senden Sie mir bitte eine E-Mail
Gib mir Bescheid. Wenn Sie können, geben Sie bitte die erforderlichen Schritte an
Nehmen Sie das Programm neu. Ich werde alles tun, um das Problem zu beheben.

Ok, nun zu einigen Antworten auf einige häufig gestellte Fragen:

Bei allen diesen Antworten wird davon ausgegangen, dass Sie eine modifizierte Xbox mit FTP-fähiger Funktion ausführen
EvoX-Version, die als Dashboard ausgeführt wird. extract-xiso setzt einen Standardwert voraus
Benutzername und Passwort von "xbox" bzw. "xbox".

F: Ich habe ein XBox-DVD-Spiel gekauft und bin besorgt, dass es verkratzt werden könnte.
Wie mache ich eine einzige rechtliche Sicherung, um meine Investition schützen zu können?

A: Eine Möglichkeit, dies zu tun, ist die Verwendung eines FTP-Clients zum Kopieren der Dateien aus dem
D: \ Laufwerk Ihrer XBox auf Ihrer Festplatte, sagen Sie in einen Ordner namens:

C: \ backup (Unix- und Mac-Benutzer denken / backup)

Dann würden Sie laufen:

PC-Benutzer: exiso.exe -c C: \ backup
Mac / Unix-Benutzer: extract-xiso -c / backup

Dadurch würde im lokalen Verzeichnis eine Datei mit dem Namen backup.iso erstellt
Sie können dann auf eine DVD brennen.

F: Ok, das ist großartig, aber Extract-Xiso unterstützt kein integriertes FTP.

A: Ja. Angenommen, Ihre Xbox befindet sich unter xbox.mydomain.com oder 10.1.2.3, wenn Sie dies nicht tun
haben DNS-Unterstützung. Dann würden Sie tun:

PC-Benutzer: exiso.exe -f xbox.mydomain.com -c d: \ backup.iso
Mac / Unix-Benutzer: extract-xiso -f xbox.mydomain.com -c / d backup.iso

Ein alternatives Formular, wenn Sie möglicherweise einen anderen FTP-Benutzernamen und ein anderes Kennwort verwenden
Sein:

extract-xiso -u Benutzername -p Kennwort -f 10.1.2.3 -c / d /backupdir/backup.iso

Beachten Sie, dass es zwischen der PC-Version wirklich keinen großen Unterschied gibt
dieses Tools und der Unix-Version. In Bezug auf die Angabe von Pfaden auf
In der Xbox können Sie entweder Unix-Stilpfade oder DOS-Stilpfade verwenden
sollte keine Rolle spielen Das bedeutet, dass F: \ GAMES \ auf der Xbox auch sein kann
gedacht (oder geschrieben) als / f / games /.

F: Wie extrahiere ich Dateien aus einem xISO, das ich gesichert habe?

A: Die Befehlszeilen für die Extraktion sind weiter unten in diesem Dokument in aufgeführt
andere Tutorials, und Sie können das Tool immer ohne Argumente ausführen
für Hilfetext. Weiter lesen!

F: Was ist der Sinn des "Umschreibens" von xISOs?

A: Nehmen wir an, Sie haben Ihre Sicherung zuvor mit einem anderen Tool erstellt, z. B. einem
das emuliert GDFIMAGE.EXE. Nun, was Sie dann haben werden, ist ein xISO
ist * maximal * ineffizient. Sie können unten lesen, um zu sehen, was ich damit meine
Das. Natürlich möchten Sie, dass Ihre DVD so gut abspielt, wie dies möglich ist
Wenn Sie Ihr Spiel wiederherstellen, wird es so schnell wie möglich abgespielt.

Um das xISO dann als optimiertes xISO umzuschreiben, geben Sie Folgendes ein:

extract-xiso -r backup.iso

Dies wird seine Magie bewirken und Sie werden mit zwei Dateien, backup.iso,
das ist jetzt das optimierte (b
Feedback geben
Verlauf
Gespeichert
Community


urnable) iso, and backup.iso.old, which is

	your old backup image.

	

	If you include the -D option to the rewrite command above, the old image

	will be deleted (if no errors occur) after the operation.

	

Q:	I rewrote the xISO to optimize it and it's a different size now.  What gives?

A:	It is normal for a rewritten xISO to shrink or grow by a few kilobytes.  This

	is due to end-of-sector buffering and is nothing to worry about.  If you need

	more convincing, run extract-xiso with the -l option to list both the old and

	new xISO and compare the file/byte counts at the end of the lists.

	

Q:	I burned the xISO to a CD/DVD but it doesn't work, what gives?

A:	PC users:

	Make sure that the DVD is burned as "CD Mode1 (Blocking 2048) DVD".  I

	have been told that some recorder programs detect the image as a CD

	Mode 2 XA image with 2352 byte sectors.  If burned this way the image won't

	work.

	

	**NOTE**  If anyone can tell me how to write the xISO so that burners

	autodetect the 2048-byte sector format please let me know and I'll

	incorporate it into the program.  As of now I've been too lazy to look

	it up.

	

	Mac Users:

	

	Launch Toast, click "Disk Image", click "Select Image...", turn *OFF*

	"Auto detect format", select the .iso image and choose OK, click OK

	to accept the defaults of 2048 byte sectors, burn.

	

Q:	Cool app dude, will you make a GUI for platform <x> so that I can

	use my mouse and don't have to use the command line?

	

A:	Nope, I've got better things to do.  Since extract-xiso runs on linux,

	freebsd, macos-x, and now windows, should I write 4 GUI's?  Nah.

	

	Anyone who wants to implement a GUI around my tool should feel free to

	do so.  The source code is opensource and you can get a copy by emailing

	me if you for some reason can't get it through the normal distribution

	channels.

	

Q:	So I bought this xbox and now I want to pirate games, can you help?

A:	Get a life.

Q:	Dude, like I typed some stuff and I don't think your program works,

	can you help?

	

A:	See answer to previous question.

Q:	I'm running operating system <x>, and I ran your tool which crashed.  I

	took notes of the exact error message that the program reported, and

	I re-ran it to verify that it happened again.  Here are the exact steps

	I took which caused to problem to recur: <blah>.  Could this be a bug?

	

A:	Thank you, I'll look into it. 

Q:	Do you answer questions in the xbox-scene forums?

A:	Yep, when I can, but sometimes I forget to look there for weeks at a time :)

Q:	On the Mac, I get this error about "_asprintf: unresolved symbol".  What gives?

A:	You need to run the MacOS X installer CD and install the BSD subsystem.

Ok that's it, enjoy!!

in

June 21, 2003

--- PREVIOUS README's FOLLOW ---

extract-xiso v2.1 by in <in@fishtank.com>

*   This is a maintenance release only to resolve a few reported bugs in the

      xISO creation code.

extract-xiso v2.0 by in <in@fishtank.com>

    Greets to Project-X!

Features:

*   Now creates *OPTIMIZED* xISO files!

    - Every XBox xISO creation tool (except this one) is based on GDFIMAGE.EXE,

      the Microsoft xISO creation tool.  That tool (and all that followed) make

      xISO's that when burned to disc give the *WORST POSSIBLE PERFORMANCE* for

      looking up files!!  I suspect Microsoft did this intentionally to prevent

      developers from burning unsigned games that seek quickly, but that's just

      my theory...

      At any rate, the XBox DVD filesystem structure is designed so that

      directory entries can be stored as a binary tree, a data structure that

      provides massively faster search times when reading discs.  I have

      implemented my creation code around an AVL (height balanced) binary tree.

      This creates xISO's that when burned to disc provide *BEST POSSIBLE

      PERFORMANCE* at all times.

      To get an idea for how bad the performance is with GDFIMAGE.EXE and the

      like, take an xISO with say 4,000 files.  On average (meaning half the

      time it's WORSE), the directory entries have to be read 2,000 times to

      find *ANY* file!  In the worst case you have to read the directory

      entries 4,000 times!!  Ever wonder why your backups run slower than your

      "normal" games?  This is why!  With a height balanced AVL tree and an

      xISO with 4,000 files, on *AVERAGE* the directory entries have to be read

      11 times, and at WORST they have to be read 12 times.  Now that's fast

      (and *OPTIMIZED* ;-)!

      Note that if you are just extracting xISO's to a hard disk there is no

      performance gain.  It only matters if you burn it to a CD or DVD.

*   Rewrites existing xISO's in one operation as *OPTIMIZED* xISO's!

*   Creates *OPTIMIZED* xISO's from an FTP server.

*   Extracts both optimized xISO and non-optimized (normal) xISO files to

      either the local filesystem or to a directory on an FTP server.

*   Massive optimizations to the decoding algorithm.

*   Many compatibility bug fixes to the

Zeichenbeschränkung: 5000

urnable) iso und backup.iso.old ist das

Ihr altes Backup-Image.

Wenn Sie die Option -D in den Befehl zum Überschreiben oben einfügen, wird das alte Image angezeigt

wird nach der Operation gelöscht (falls keine Fehler auftreten).

F: Ich habe das xISO neu geschrieben, um es zu optimieren. Es hat jetzt eine andere Größe. Was gibt?

A: Es ist normal, dass ein umgeschriebenes xISO um einige Kilobytes schrumpft oder wächst. Diese

liegt an der Pufferung am Ende des Sektors und ist kein Grund zur Sorge. Wenn Sie brauchen

überzeugender ist, führen Sie extract-xiso mit der Option -l aus, um sowohl das alte als auch das aufzulisten

neues xISO und vergleichen Sie die Datei- / Byte-Zählungen am Ende der Listen.

F: Ich habe das xISO auf eine CD / DVD gebrannt, aber es funktioniert nicht. Was gibt es?

A: PC-Benutzer:

Stellen Sie sicher, dass die DVD als "CD Mode1 (Blocking 2048) DVD" gebrannt wird. ich

Es wurde gesagt, dass einige Rekorderprogramme das Image als CD erkennen

Modus 2 XA-Bild mit 2352 Byte Sektoren. Wenn auf diese Weise gebrannt wird das Bild nicht

Arbeit.

** HINWEIS ** Wenn mir jemand sagen kann, wie man die xISO damit Brenner schreibt

autodetect das 2048-Byte-Sektorformat lass es mich wissen und ich werde es tun

integrieren Sie es in das Programm. Bis jetzt war ich zu faul, um hinzusehen

es auf.

Mac-Benutzer:

Starten Sie Toast, klicken Sie auf "Disk Image", klicken Sie auf "Select Image ...", und schalten Sie * OFF * aus.

"Format automatisch erkennen", wählen Sie das ISO-Bild aus und klicken Sie auf OK

Um die Standardwerte von 2048 Byte-Sektoren zu akzeptieren, brennen Sie.

Q: Cooler App-Typ. Werden Sie eine GUI für die Plattform <x> erstellen, damit ich es kann?

Verwenden Sie meine Maus und müssen Sie die Befehlszeile nicht verwenden?

A: Nein, ich habe bessere Dinge zu tun. Da extract-xiso unter Linux läuft,

freebsd, macos-x und jetzt Windows, sollte ich 4 GUIs schreiben? Nah

Jeder, der eine GUI um mein Tool herum implementieren möchte, sollte sich dazu frei fühlen

tun Sie dies. Der Quellcode ist opensource und Sie können eine Kopie per E-Mail erhalten

Ich, wenn Sie es aus irgendeinem Grund nicht durch die Normalverteilung bekommen können

Kanäle.

F: Also ich habe diese Xbox gekauft und jetzt möchte ich Piratenspiele machen. Kannst du helfen?

A: Holen Sie sich ein Leben.

Q: Dude, als hätte ich ein paar Sachen eingetippt und ich glaube nicht, dass Ihr Programm funktioniert.

kannst du helfen?

A: Siehe die Antwort auf die vorige Frage.

F: Ich arbeite mit Betriebssystem <x> und habe Ihr Tool ausgeführt, das abgestürzt ist. ich

hat sich die genaue Fehlermeldung notiert, die das Programm gemeldet hat, und

Ich habe es erneut ausgeführt, um zu überprüfen, dass es erneut passiert ist. Hier sind die genauen Schritte

Ich nahm an, was zu Problemen führte, um wiederkehren zu können: <blah>. Könnte das ein Fehler sein?

A: Danke, ich werde mich darum kümmern.

F: Beantworten Sie Fragen in den Xbox-Scene-Foren?

A: Ja, wenn ich kann, aber manchmal vergesse ich, dort wochenlang hinzuschauen :)

F: Auf dem Mac bekomme ich die Fehlermeldung "_asprintf: nicht aufgelöstes Symbol". Was gibt?

A: Sie müssen die MacOS X-Installations-CD ausführen und das BSD-Subsystem installieren.

Ok das ist es, viel Spaß !!

im

21. Juni 2003

--- VORHERIGE README-FOLGEN ---

extract-xiso v2.1 von in <in@fishtank.com>

* Dies ist eine Wartungsversion, die nur einige gemeldete Fehler in der

      xISO-Erstellungscode.

extract-xiso v2.0 von in <in@fishtank.com>

    Grüße an Project-X!

Eigenschaften:

* Erstellt jetzt * OPTIMIZED * xISO-Dateien!

    - Jedes XBox xISO-Erstellungswerkzeug (außer diesem) basiert auf GDFIMAGE.EXE.

      das Microsoft xISO-Erstellungstool. Dieses Tool (und all das, was folgte) machen

      xISO's, wenn sie auf CD gebrannt werden, ergibt das * WORST POSSIBLE PERFORMANCE *

      Dateien nachschlagen !! Ich vermute, Microsoft hat dies absichtlich verhindert

      Entwickler brennen unsignierte Spiele, die schnell suchen, aber das ist einfach so

      meine Theorie ...

      In jedem Fall ist die XBox DVD-Dateisystemstruktur so ausgelegt, dass

      Verzeichniseinträge können als binärer Baum gespeichert werden, eine Datenstruktur die

      ermöglicht erheblich kürzere Suchzeiten beim Lesen von Discs. ich habe

      Erstellte meinen Erstellungscode um einen AVL-Binärbaum (höhenausgeglichener Baum).

      Dadurch werden xISOs erstellt, die beim Brennen auf Discs * BEST POSSIBLE bieten

      PERFORMANCE * zu jeder Zeit.

      Um eine Vorstellung davon zu bekommen, wie schlecht die Leistung mit GDFIMAGE.EXE und dem ist

      Nehmen Sie beispielsweise ein xISO mit etwa 4.000 Dateien. Im Durchschnitt (die Hälfte der

      Mal ist es schlimmer), müssen die Verzeichniseinträge 2.000 mal gelesen werden

      * ANY * Datei finden! Im schlimmsten Fall müssen Sie das Verzeichnis lesen

      Einträge 4000 mal !! Ich frage mich immer, warum Ihre Backups langsamer laufen als Ihre

      "normale" Spiele? Deshalb! Mit einem höhenausgeglichenen AVL-Baum und einem

      xISO mit 4.000 Dateien, bei * AVERAGE * müssen die Verzeichniseinträge gelesen werden

      11 mal und bei WORST müssen sie 12 mal gelesen werden. Das ist jetzt schnell

      (und * OPTIMIERTE * ;-)!

      Wenn Sie xISOs nur auf eine Festplatte extrahieren, gibt es keine

      Leistungsgewinn. Es ist nur wichtig, wenn Sie es auf eine CD oder DVD brennen.

* Schreibt vorhandene xISOs in einem Vorgang als * OPTIMIZED * xISOs um!

* Erstellt * OPTIMIZED * xISO's von einem FTP-Server.

* Extrahiert sowohl optimierte xISO-Dateien als auch nicht optimierte (normale) xISO-Dateien nach

      entweder das lokale Dateisystem oder ein Verzeichnis auf einem FTP-Server.

* Massive Optimierungen des Decodierungsalgorithmus.

* Viele Kompatibilitätsfehler behoben

Feedback geben

Verlauf

Gespeichert

Community


urnable) iso, and backup.iso.old, which is
	your old backup image.
	
	If you include the -D option to the rewrite command above, the old image
	will be deleted (if no errors occur) after the operation.
	
Q:	I rewrote the xISO to optimize it and it's a different size now.  What gives?

A:	It is normal for a rewritten xISO to shrink or grow by a few kilobytes.  This
	is due to end-of-sector buffering and is nothing to worry about.  If you need
	more convincing, run extract-xiso with the -l option to list both the old and
	new xISO and compare the file/byte counts at the end of the lists.
	
Q:	I burned the xISO to a CD/DVD but it doesn't work, what gives?

A:	PC users:

	Make sure that the DVD is burned as "CD Mode1 (Blocking 2048) DVD".  I
	have been told that some recorder programs detect the image as a CD
	Mode 2 XA image with 2352 byte sectors.  If burned this way the image won't
	work.
	
	**NOTE**  If anyone can tell me how to write the xISO so that burners
	autodetect the 2048-byte sector format please let me know and I'll
	incorporate it into the program.  As of now I've been too lazy to look
	it up.
	
	Mac Users:
	
	Launch Toast, click "Disk Image", click "Select Image...", turn *OFF*
	"Auto detect format", select the .iso image and choose OK, click OK
	to accept the defaults of 2048 byte sectors, burn.
	
Q:	Cool app dude, will you make a GUI for platform <x> so that I can
	use my mouse and don't have to use the command line?
	
A:	Nope, I've got better things to do.  Since extract-xiso runs on linux,
	freebsd, macos-x, and now windows, should I write 4 GUI's?  Nah.
	
	Anyone who wants to implement a GUI around my tool should feel free to
	do so.  The source code is opensource and you can get a copy by emailing
	me if you for some reason can't get it through the normal distribution
	channels.
	
Q:	So I bought this xbox and now I want to pirate games, can you help?

A:	Get a life.

Q:	Dude, like I typed some stuff and I don't think your program works,
	can you help?
	
A:	See answer to previous question.

Q:	I'm running operating system <x>, and I ran your tool which crashed.  I
	took notes of the exact error message that the program reported, and
	I re-ran it to verify that it happened again.  Here are the exact steps
	I took which caused to problem to recur: <blah>.  Could this be a bug?
	
A:	Thank you, I'll look into it. 

Q:	Do you answer questions in the xbox-scene forums?

A:	Yep, when I can, but sometimes I forget to look there for weeks at a time :)

Q:	On the Mac, I get this error about "_asprintf: unresolved symbol".  What gives?

A:	You need to run the MacOS X installer CD and install the BSD subsystem.


Ok that's it, enjoy!!

in
June 21, 2003


--- PREVIOUS README's FOLLOW ---

extract-xiso v2.1 by in <in@fishtank.com>

*   This is a maintenance release only to resolve a few reported bugs in the
      xISO creation code.


extract-xiso v2.0 by in <in@fishtank.com>

    Greets to Project-X!

Features:

*   Now creates *OPTIMIZED* xISO files!

    - Every XBox xISO creation tool (except this one) is based on GDFIMAGE.EXE,
      the Microsoft xISO creation tool.  That tool (and all that followed) make
      xISO's that when burned to disc give the *WORST POSSIBLE PERFORMANCE* for
      looking up files!!  I suspect Microsoft did this intentionally to prevent
      developers from burning unsigned games that seek quickly, but that's just
      my theory...

      At any rate, the XBox DVD filesystem structure is designed so that
      directory entries can be stored as a binary tree, a data structure that
      provides massively faster search times when reading discs.  I have
      implemented my creation code around an AVL (height balanced) binary tree.

      This creates xISO's that when burned to disc provide *BEST POSSIBLE
      PERFORMANCE* at all times.

      To get an idea for how bad the performance is with GDFIMAGE.EXE and the
      like, take an xISO with say 4,000 files.  On average (meaning half the
      time it's WORSE), the directory entries have to be read 2,000 times to
      find *ANY* file!  In the worst case you have to read the directory
      entries 4,000 times!!  Ever wonder why your backups run slower than your
      "normal" games?  This is why!  With a height balanced AVL tree and an
      xISO with 4,000 files, on *AVERAGE* the directory entries have to be read
      11 times, and at WORST they have to be read 12 times.  Now that's fast
      (and *OPTIMIZED* ;-)!

      Note that if you are just extracting xISO's to a hard disk there is no
      performance gain.  It only matters if you burn it to a CD or DVD.

*   Rewrites existing xISO's in one operation as *OPTIMIZED* xISO's!

*   Creates *OPTIMIZED* xISO's from an FTP server.

*   Extracts both optimized xISO and non-optimized (normal) xISO files to
      either the local filesystem or to a directory on an FTP server.

*   Massive optimizations to the decoding algorithm.

*   Many compatibility bug fixes to the
Zeichenbeschränkung: 5000
urnable) iso und backup.iso.old ist das
Ihr altes Backup-Image.

Wenn Sie die Option -D in den Befehl zum Überschreiben oben einfügen, wird das alte Image angezeigt
wird nach der Operation gelöscht (falls keine Fehler auftreten).

F: Ich habe das xISO neu geschrieben, um es zu optimieren. Es hat jetzt eine andere Größe. Was gibt?

A: Es ist normal, dass ein umgeschriebenes xISO um einige Kilobytes schrumpft oder wächst. Diese
liegt an der Pufferung am Ende des Sektors und ist kein Grund zur Sorge. Wenn Sie brauchen
überzeugender ist, führen Sie extract-xiso mit der Option -l aus, um sowohl das alte als auch das aufzulisten
neues xISO und vergleichen Sie die Datei- / Byte-Zählungen am Ende der Listen.

F: Ich habe das xISO auf eine CD / DVD gebrannt, aber es funktioniert nicht. Was gibt es?

A: PC-Benutzer:

Stellen Sie sicher, dass die DVD als "CD Mode1 (Blocking 2048) DVD" gebrannt wird. ich
Es wurde gesagt, dass einige Rekorderprogramme das Image als CD erkennen
Modus 2 XA-Bild mit 2352 Byte Sektoren. Wenn auf diese Weise gebrannt wird das Bild nicht
Arbeit.

** HINWEIS ** Wenn mir jemand sagen kann, wie man die xISO damit Brenner schreibt
autodetect das 2048-Byte-Sektorformat lass es mich wissen und ich werde es tun
integrieren Sie es in das Programm. Bis jetzt war ich zu faul, um hinzusehen
es auf.

Mac-Benutzer:

Starten Sie Toast, klicken Sie auf "Disk Image", klicken Sie auf "Select Image ...", und schalten Sie * OFF * aus.
"Format automatisch erkennen", wählen Sie das ISO-Bild aus und klicken Sie auf OK
Um die Standardwerte von 2048 Byte-Sektoren zu akzeptieren, brennen Sie.

Q: Cooler App-Typ. Werden Sie eine GUI für die Plattform <x> erstellen, damit ich es kann?
Verwenden Sie meine Maus und müssen Sie die Befehlszeile nicht verwenden?

A: Nein, ich habe bessere Dinge zu tun. Da extract-xiso unter Linux läuft,
freebsd, macos-x und jetzt Windows, sollte ich 4 GUIs schreiben? Nah

Jeder, der eine GUI um mein Tool herum implementieren möchte, sollte sich dazu frei fühlen
tun Sie dies. Der Quellcode ist opensource und Sie können eine Kopie per E-Mail erhalten
Ich, wenn Sie es aus irgendeinem Grund nicht durch die Normalverteilung bekommen können
Kanäle.

F: Also ich habe diese Xbox gekauft und jetzt möchte ich Piratenspiele machen. Kannst du helfen?

A: Holen Sie sich ein Leben.

Q: Dude, als hätte ich ein paar Sachen eingetippt und ich glaube nicht, dass Ihr Programm funktioniert.
kannst du helfen?

A: Siehe die Antwort auf die vorige Frage.

F: Ich arbeite mit Betriebssystem <x> und habe Ihr Tool ausgeführt, das abgestürzt ist. ich
hat sich die genaue Fehlermeldung notiert, die das Programm gemeldet hat, und
Ich habe es erneut ausgeführt, um zu überprüfen, dass es erneut passiert ist. Hier sind die genauen Schritte
Ich nahm an, was zu Problemen führte, um wiederkehren zu können: <blah>. Könnte das ein Fehler sein?

A: Danke, ich werde mich darum kümmern.

F: Beantworten Sie Fragen in den Xbox-Scene-Foren?

A: Ja, wenn ich kann, aber manchmal vergesse ich, dort wochenlang hinzuschauen :)

F: Auf dem Mac bekomme ich die Fehlermeldung "_asprintf: nicht aufgelöstes Symbol". Was gibt?

A: Sie müssen die MacOS X-Installations-CD ausführen und das BSD-Subsystem installieren.


Ok das ist es, viel Spaß !!

im
21. Juni 2003


--- VORHERIGE README-FOLGEN ---

extract-xiso v2.1 von in <in@fishtank.com>

* Dies ist eine Wartungsversion, die nur einige gemeldete Fehler in der
      xISO-Erstellungscode.


extract-xiso v2.0 von in <in@fishtank.com>

    Grüße an Project-X!

Eigenschaften:

* Erstellt jetzt * OPTIMIZED * xISO-Dateien!

    - Jedes XBox xISO-Erstellungswerkzeug (außer diesem) basiert auf GDFIMAGE.EXE.
      das Microsoft xISO-Erstellungstool. Dieses Tool (und all das, was folgte) machen
      xISO's, wenn sie auf CD gebrannt werden, ergibt das * WORST POSSIBLE PERFORMANCE *
      Dateien nachschlagen !! Ich vermute, Microsoft hat dies absichtlich verhindert
      Entwickler brennen unsignierte Spiele, die schnell suchen, aber das ist einfach so
      meine Theorie ...

      In jedem Fall ist die XBox DVD-Dateisystemstruktur so ausgelegt, dass
      Verzeichniseinträge können als binärer Baum gespeichert werden, eine Datenstruktur die
      ermöglicht erheblich kürzere Suchzeiten beim Lesen von Discs. ich habe
      Erstellte meinen Erstellungscode um einen AVL-Binärbaum (höhenausgeglichener Baum).

      Dadurch werden xISOs erstellt, die beim Brennen auf Discs * BEST POSSIBLE bieten
      PERFORMANCE * zu jeder Zeit.

      Um eine Vorstellung davon zu bekommen, wie schlecht die Leistung mit GDFIMAGE.EXE und dem ist
      Nehmen Sie beispielsweise ein xISO mit etwa 4.000 Dateien. Im Durchschnitt (die Hälfte der
      Mal ist es schlimmer), müssen die Verzeichniseinträge 2.000 mal gelesen werden
      * ANY * Datei finden! Im schlimmsten Fall müssen Sie das Verzeichnis lesen
      Einträge 4000 mal !! Ich frage mich immer, warum Ihre Backups langsamer laufen als Ihre
      "normale" Spiele? Deshalb! Mit einem höhenausgeglichenen AVL-Baum und einem
      xISO mit 4.000 Dateien, bei * AVERAGE * müssen die Verzeichniseinträge gelesen werden
      11 mal und bei WORST müssen sie 12 mal gelesen werden. Das ist jetzt schnell
      (und * OPTIMIERTE * ;-)!

      Wenn Sie xISOs nur auf eine Festplatte extrahieren, gibt es keine
      Leistungsgewinn. Es ist nur wichtig, wenn Sie es auf eine CD oder DVD brennen.

* Schreibt vorhandene xISOs in einem Vorgang als * OPTIMIZED * xISOs um!

* Erstellt * OPTIMIZED * xISO's von einem FTP-Server.

* Extrahiert sowohl optimierte xISO-Dateien als auch nicht optimierte (normale) xISO-Dateien nach
      entweder das lokale Dateisystem oder ein Verzeichnis auf einem FTP-Server.

* Massive Optimierungen des Decodierungsalgorithmus.

* Viele Kompatibilitätsfehler behoben
Feedback geben
Verlauf
Gespeichert
Community
