# tODE: the Object-centric Development Environment [![Build Status](https://travis-ci.org/dalehenrich/tode.png?branch=master)](https://travis-ci.org/dalehenrich/tode)

## Installation

0. [Install version 3.1.0.5 of GemStone/S](http://seaside.gemtalksystems.com/downloads.html):

  ```Shell
  installGemstone.sh 3.1.0.5
  source /opt/gemstone/product/seaside/defSeaside
  ```
1. [Start the stone and netldi processes](https://code.google.com/p/glassdb/wiki/StartingANativeStone):

  ```Shell
  startGemstone
  startnet
  ```
2. Note the port that the netldi process is runnng on using `gslist -l`.
  In the example below, the Netldi process is running on port 53241:

  ```Shell
  topeka:3.1.0.4 dhenrich$ gslist -lc
  Status   Version    Owner    Pid   Port   Started     Type       Name
  ------- --------- --------- ----- ----- ------------ ------      ----
  exists  3.1.0.4   dhenrich   3646 53241 Dec 02 20:03 Netldi      gs64ldi
  exists  3.1.0.4   dhenrich   1087 49676 Dec 02 13:13 Stone       seaside31
  exists  3.1.0.4   dhenrich   1088 49668 Dec 02 13:13 cache       seaside31~5d1218508dadd8c0
  ```
1. Download the [tODE_3.1 one-click Pharo image](http://seaside.gemtalksystems.com/tODE/tODE_3.1.app.zip) and launch the image.
2. Evaluate the following expression in the **tODE Shell** window to
   open the tODE shell console:

  ```Smalltalk
  TDShell open: '3.1.0_mac'.
  ```
3. Enter the following command, edited to match your stone's
   attributes, in the tODE shell console:

  ```Shell
  sessionDescription --netldi=50377 --stoneName=seaside --serverHost=localhost
  ```
  This command sets the most commonly changed fields in the session
  description. 

  If you want to edit any of the other fields in
  the session description use the following command:

  ```Shell
  sessionDescription -e
  ```
  After directly editting a session description, you should stash the full session description
  in a workspace (or file) so that you can easily reset your session
  description to a known state. The -l flag is useful for that:

  ```Shell
  sessionDescription -l
  ```
  since it produces a Smalltalk expression that installs a session
  description in the **TDTopezGemStoneClient** sessionMap.
 
  To get additional information about the `sessionDescription` command:

  ```Shell
  sessionDescription -h
  ```
4. Now enter the `testLogin` command to verify that you can log into
   GemStone using your session description:

  ```Shell
  testLogin
  ```
  If successful, you should get a report that looks something like the following:

  ```
  tode 1 > testLogin
  Stone            : !TCP@foos#server!k_gs64stone
  Stone host       : foos
  GemStone version : 3.2.0
  cpu kind         : x86_64
  GLASS version    : >=1.0-beta.8.7.3 [ConfigurationOfGLASS]
  Metacello version: >=1.0-beta.31.2 [ConfigurationOfMetacello]
  GLASS1 not installed
  Tode not installed
  ```
  If an error like the following occurs:

  ```
  tode 1 > testLogin
  Error running testLogin:

  'Error: Unable to create a GemStone session.
  NetLDI service ''53436'' not found on node ''faas'' port 53436 :
  getaddrinfo failed, EAI error 8, nodename nor servname provided, or not known,  
  For further information about login   failures, check the gem log file'

	  Unable to connect to netLDI '53436' on host 'faas'.
	  Please make sure that the netLDI '53436' is running on host 'faas',
	  is listening on the correct port, and that you can reach host 'faas'
	  from this machine.
  ```
  The instructions should provide some help in remedying the situation.
  If still have trouble, copy the output from `sessiondescription -l` and `testLogin`
  and include the information in your mail to the 
  [GLASS](http://lists.gemtalksystems.com/mailman/listinfo/glass) or 
  [tODE](https://groups.google.com/forum/#!forum/tode_st) mailing
  lists.

5. Finally run the `installTode` command to install tODE on your
   GemStone server:

  ```Shell
  installTode
  ```
  If you have custom installation, you should look at `installTode --help` to see how to
  customize the `installTode` script.

6. Immediately after the `installTode` command finishes, I recommend
   that you create a backup of your tODE installation:

  ```Shell
  bu backup virgin_tode.dbf
  ```
7. Now is also a good time to run the `testLogin` command again, so you
   can contrast with the original report:

  ```
  tode 1 > testLogin
  Stone            : !TCP@foos#server!k_gs64stone
  Stone host       : foos
  GemStone version : 3.2.0
  cpu kind         : x86_64
  GLASS version    : >=1.0-beta.9.1 [ConfigurationOfGLASS]
  Metacello version: >=1.0-beta.32.1 [ConfigurationOfMetacello]
  GLASS1:
         repository: /opt/gemstone/log/github-cache/glassdb/glass/master/glassdb-glass-8b0a998/repository
  Tode:
         repository: /opt/gemstone/log/github-cache/dalehenrich/tode/master/dalehenrich-tode-fd02f13/repository
  ```


### Additional tODE Documentation

- [Getting Started with tODE](https://github.com/dalehenrich/tode/blob/master/docs/GettingStarted.md)
- [object shell man page summary](https://github.com/dalehenrich/tode/blob/master/docs/man/ManPageSummary.md)
- [keybard shortcuts](https://github.com/dalehenrich/tode/blob/master/docs/man/KeyboardMapSummary.md)
- [object shell man pages](https://github.com/dalehenrich/tode/tree/master/docs/man)

Here's a video of my 
[Smalltalks 2013](http://www.youtube.com/watch?v=m4LcZ4_1Yic&list=PLCGAAdUizzH027lLWKXh_44cGuEsay7-R&index=16) 
presentation:
[topez: A Stepping Stone to tODE](http://www.youtube.com/watch?v=pIp_Y46iB_I&list=PLCGAAdUizzH31VumrhrK2HHepHu3DBpY0&index=14).

Here's a recent screen shot:

<img style="border: 2px solid #000000;" src="https://raw.github.com/dalehenrich/tode/master/docs/screenShot_2013-03-10.png" />

[1]: http://www.pharo-project.org/pharo-download/release-1-4
[2]: http://gemstonesoup.wordpress.com/2012/09/21/gemstones-3-1-0-1-is-shipping/
[3]: http://community.gemstone.com/download/attachments/6816350/GS64-Topaz-3.0.pdf?version=1
[4]: http://www.pharo-project.org/pharo-download/release-2-0 
