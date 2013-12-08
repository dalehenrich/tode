# tODE: the Object-centric Development Environment [![Build Status](https://travis-ci.org/dalehenrich/tode.png?branch=master)](https://travis-ci.org/dalehenrich/tode)

## Installation

0. After [installing](http://seaside.gemtalksystems.com/downloads.html) and [starting GemStone](https://code.google.com/p/glassdb/wiki/StartingANativeStone), 
   note the port that the netldi process is runnng on using `gslist -l`.
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
3. Enter the following command (editted to match your stone's
   attributes) at the `tode 1 >` prompt and hit return.:

  ```Shell
  sessionDescription --netldi=50377 --stoneName=seaside --stoneHost=localhost
  ```
  This command sets the most commonly changed fields in the session
  description. If you want to view (or edit) any of the other fields in
  the session description use the following command:

  ```Shell
  sessionDescription -e
  ```
  Use the following to get help on the `sessionDescription` command:

  ```Shell
  sessionDescription -h
  ```

### GemStone Server Installation

```Smalltalk
"GLASS 1.0-beta.9.1"
ConfigurationOfGLASS project updateProject.
GsDeployer deploy: [ (ConfigurationOfGLASS project version: '1.0-beta.9.1') load ].

"Most recent Metacello"
[
Metacello new
  baseline: 'Metacello';
  repository: 'github://dalehenrich/metacello-work:master/repository';
  load: 'ALL'.
  ] on: Warning
    do: [:ex |
      Transcript cr; show: ex description.
      ex resume].

"GLASS1"
Metacello new
  baseline: 'GLASS1';
  repository: 'github://glassdb/glass:master/repository';
  onConflict: [ :ex | ex allow ];
  onWarning: [ :ex |
        Transcript
          cr;
          show: ex description.
        ex resume ];
  load: 'default'.

"tODE"
Metacello new
    baseline: 'Tode';
    repository: 'github://dalehenrich/tode:master/repository';
    load: 'GemStone Dev'.
```

*I have not renamed the Baseline ... yet*

### Pharo Client Installation

See the [Gci client installation instructions](https://github.com/dalehenrich/tode/blob/master/docs/GciClientInstallation.md).

### tODE Documentation

- [Getting Started with tODE](https://github.com/dalehenrich/tode/blob/master/docs/GettingStarted.md)
- [object shell man page summary](https://github.com/dalehenrich/tode/blob/master/docs/man/ManPageSummary.md)
- [keybard shortcuts](https://github.com/dalehenrich/tode/blob/master/docs/man/KeyboardMapSummary.md)
- [object shell man pages](https://github.com/dalehenrich/tode/tree/master/docs/man)

Here's a video of my 
[Smalltalks 2012](http://www.fast.org.ar/smalltalks2012?_s=bvlW29Av2dix9EWt&_k=OGfhqoGSxR431Tth) 
presentation:
[topez: A Stepping Stone to tODE](http://www.youtube.com/watch?v=pIp_Y46iB_I&list=PLCGAAdUizzH31VumrhrK2HHepHu3DBpY0&index=14).

Here's a recent screen shot:

<img style="border: 2px solid #000000;" src="https://raw.github.com/dalehenrich/tode/master/docs/screenShot_2013-03-10.png" />

[1]: http://www.pharo-project.org/pharo-download/release-1-4
[2]: http://gemstonesoup.wordpress.com/2012/09/21/gemstones-3-1-0-1-is-shipping/
[3]: http://community.gemstone.com/download/attachments/6816350/GS64-Topaz-3.0.pdf?version=1
[4]: http://www.pharo-project.org/pharo-download/release-2-0 
