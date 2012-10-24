# Topez Programming Environment

**Topez** is based upon the [**Topaz Programming Environment**][3] for GemStone/S.

The current implementation uses a [Pharo1.4][1] image as the GCI client running against a [GemStone/S 3.1.0.1][2] stone using
version 1.0-beta.9 of GLASS.

### GemStone Server Installation

```Smalltalk
Metacello new
    baseline: 'Topez';
    repository: 'github://dalehenrich/topez:master/packages';
    load: 'Server'.
```

### Pharo Client Installation


```Smalltalk
Metacello new
    baseline: 'Topez';
    repository: 'github://dalehenrich/topez:master/packages';
    load: 'Client'.
``` 

*See the [Metacello installation instructions](https://github.com/dalehenrich/metacello-work/blob/master/README.md) 
for details on installing Metacello.*

Here's a recent screen shot:

<img style="border: 2px solid #000000;" src="https://raw.github.com/dalehenrich/topez/keymapping/docs/Screenshot_2012-10-15.png" />

[1]: http://www.pharo-project.org/pharo-download/release-1-4
[2]: http://gemstonesoup.wordpress.com/2012/09/21/gemstones-3-1-0-1-is-shipping/
[3]: http://community.gemstone.com/download/attachments/6816350/GS64-Topaz-3.0.pdf?version=1
 
