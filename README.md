# tODE: the Object-centric Development Environment [![Build Status](https://travis-ci.org/dalehenrich/tode.png?branch=master)](https://travis-ci.org/dalehenrich/tode)

The current incarnation of **tODE** is very loosely based upon the [**Topaz Programming Environment**][3] for GemStone/S.

The current implementation (still in development) uses a [Pharo1.4][1] image as the GCI client running against a [GemStone/S 3.1.0.x][2] stone using
version 1.0-beta.9 of GLASS.

*See the [Metacello installation instructions](https://github.com/dalehenrich/metacello-work/blob/master/README.md) 
for details on installing Metacello.*

### GemStone Server Installation

```Smalltalk
Metacello new
    baseline: 'Tode';
    repository: 'github://dalehenrich/tode:master/repository';
    load: 'GemStone'.
```

*I have not renamed the Baseline ... yet*

### Pharo Client Installation

See the [Gci client installation instructions](https://github.com/dalehenrich/topez/blob/master/docs/GciClientInstallation.md).

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
 
