# GCI Client Installation


##on Linux

```Shell
cp $GEMSTONE/lib32*.so <path_to_Pharo_image_file>
```
## on Mac

```Shell
cp $GEMSTONE/lib32*.dylib <path_to_Pharo_image_file>
```

## Pharo Image Topez Installation

```Smalltalk
Metacello new
    baseline: 'Topez';
    repository: 'github://dalehenrich/topez:master/packages';
    load: 'Pharo Client'.
``` 

## Topez setup

Define a session description:

```Smalltalk
| sessionDescription |
sessionDescription := OGCustomSessionDescription new
    name: '3.1.0.1';
    gemstoneVersion: '3.1.0.1';
    gciLibraryName: 'libgcirpc-3.1.0.1-32.dylib'; "or libgcirpc-3.1.0.1-32.so for Linux"
    adornmentColor: Color lightGreen;
    stoneHost: 'localhost';
    stoneName: 'seaside';
    gemHost: 'localhost';
    netLDI: '50377';
    gemTask: 'gemnetobject';
    userId: 'DataCurator';
    password: 'swordfish';
    osUserId: '';
    osPassword: '';
    backupDirectory: '';
    dataDirectory: '';
    yourself.
TDTopezClient sessionMap 
    at: sessionDescrtion name
    put: sessionDescription.
```

Login using the session:

```Smalltalk
TDShell open: '3.1.0.1'
```

