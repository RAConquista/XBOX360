<h2>HDDHACK Tool</h2>

<i>This MS DOS tool allow you to format a regular WD 2.5″ HDD into the xbox format (FATX), then you just have to put in a xbox hdd case and use it as a genuine xbox 360 HDD.</i>

(v1.40)
<li> Updated SATA and PATA controller list</li>
<li> Added support for 320GB and 500GB hard drives (HDDSS.BIN required)</li>
<li> Added support to adjust Idle Timer (IntelliPark)</li>
<li> Confirmed HddHacker supports hard drives manufactured till 2013</li>

<h2>Compatibility List:</h2>

(Works with the following Western Digital drive series: [BEAS/BEVS/BEVT/BPVT/LPVT/BEKT/BJKT/BPKT/BUDT/HLFS/BLFS])
<br>
<br>
<br>
<h3>Scorpio Series</h3>
<code>
<p>
WD600BEAS – 60GB</p>
<p>WD800BEAS – 80GB</p>
<p>WD1000BEAS – 100GB</p>
<p>WD1200BEAS – 120GB</p>
<p>WD1600BEAS – 160GB</p>
<p>WD2000BEAS – 200GB</p>
<p>WD2500BEAS – 250GB</p>
<p>WD600BEVS – 60GB</p>
<p>WD800BEVS – 80GB</p>
<p>WD1000BEVS – 100GB</p>
<p>WD1200BEVS – 120GB</p>
<p>WD1600BEVS – 160GB</p>
<p>WD2000BEVS – 200GB</p>
<p>WD2500BEVS – 250GB</p>
</code>
<br>
<br>
<h3>Scorpio Blue Series</h3>
<br>
<code>
<p>WD3200BEVS – 320GB</p>
<p>WD600BEVT – 60GB</p>
<p>WD800BEVT – 80GB</p>
<p>WD1200BEVT – 120GB</p>
<p>WD1600BEVT – 160GB</p>
<p>WD2000BEVT – 200GB</p>
<p>WD2500BEVT – 250GB</p>
<p>WD3200BEVT – 320GB</p>
<p>WD4000BEVT – 400GB</p>
<p>WD5000BEVT – 500GB</p>
<p>WD6400BEVT – 640GB</p>
<p>WD1600BPVT – 160GB</p>
<p>WD2500BPVT – 250GB</p>
<p>WD3200BPVT – 320GB</p>
<p>WD5000BPVT – 500GB</p>
<p>WD6400BPVT – 640GB</p>
<p>WD7500BPVT – 750GB</p>
<p>WD2500LPVT – 250GB</p>
<p>WD3200LPVT – 320GB</p>
<p>WD5000LPVT – 500GB</p>
<p>WD10TPVT – 1TB</p></code>

<h3>Scorpio Black Series</h3>
<br>
<code>
<p>WD800BEKT – 80GB</p>
<p>WD1200BEKT – 120GB</p>
<p>WD1600BEKT – 160GB</p>
<p>WD2500BEKT – 250GB</p>
<p>WD3200BEKT – 320GB</p>
<p>WD5000BEKT – 500GB</p>
<p>WD800BJKT – 80GB</p>
<p>WD1200BJKT – 120GB</p>
<p>WD1600BJKT – 160GB</p>
<p>WD3200BJKT – 320GB</p>
<p>WD5000BJKT – 500GB</p>
<p>WD3200BPKT – 320GB</p>
<p>WD5000BPKT – 500GB</p>
<p>WD7500BPKT – 750GB</p>
</code>
<br>
<br>
<h3>AV-25 Series</h3>
<br>
<code>
<p>WD1600BUDT – 160GB</p>
<p>WD2500BUDT – 250GB</p>
<p>WD3200BUDT – 320GB</p>
<p>WD5000BUDT – 500GB</p>
</code>
<br>
<br>
<h3>VelociRaptor Series</h3>
<br>
<code>
<p>WD1500HLFS – 150GB</p>
<p>WD1600HLFS – 160GB</p>
<p>WD3000HLFS – 300GB</p>
<p>WD1500BLFS – 150GB</p>
<p>WD1600BLFS – 160GB</p>
<p>WD3000BLFS – 300GB</p>
</code>
<br>
<br>

<h2>How to Use</h2>

    <i>HddHacker supports two flashing modes, Auto and Manual. Typing HddHackr at a DOS prompt
    will start auto mode. In auto mode all hard drives will be detected automatically.
    In manual mode you can enter all the parameters used for flashing by hand.</i>

    <b>The following help screen is displayed if you start HddHacker with a wrong number of
    arguments:</b>

    <b>HDDHACKR [C|D|F|R] [PORT] [DRIVE POS] [SECTOR FILE] [RESTORE FILE]</b>
    <b>C:</b> Create Partitions 0/2/3
    <b>D:</b> Dump sector 16-22 from XBOX360 HDD to file
    <b>F:</b> Flash Western Digital firmware
    <b>R:</b> Restore Western Digital firmware
    <b>PORT:</b> Port to send command to e.g. 09F0
    <b>DRIVE POS:</b> A0 for Master, B0 for Slave
    <b>SECTOR FILE:</b> Sector dump file e.g. HDDSS.BIN
    <b>RESTORE FILE:</b> Firmware restore file e.g. UNDO.BIN

    Example for create, dump, flash and restore:
    HDDHACKR C 09F0 A0
    HDDHACKR D 09F0 A0 HDDSS.BIN
    HDDHACKR F 09F0 A0 HDDSS.BIN UNDO.BIN
    HDDHACKR R 09F0 A0 UNDO.BIN
