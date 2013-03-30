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
    load: 'Dev'.
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
    at: sessionDescription name
    put: sessionDescription.
```

Define window sizes.

1280x800 display (using Consolas Regular 10 FreeType font):

```Smalltalk
TDTopezClient
  	windowOrigin: 3@0.5;
  	listWindowWidth: 22;
	  codeWindowHeight: 19;
  	codeWindowWidth: 70;
  	initialize.
```

1440x900 display (using Consolas Regular 10 FreeType font):

```Smalltalk
TDTopezClient
      windowOrigin: 5@0.5;
      listWindowWidth: 24;
      codeWindowHeight: 21;
      codeWindowWidth: 80;
      initialize.
```
1440x900 display (using Bitmap DejaVu Sans Regular 9 font):

```Smalltalk
TDTopezClient
      windowOrigin: 5@0.5;
      listWindowWidth: 18;
      codeWindowHeight: 21;
      codeWindowWidth: 65;
      initialize.
```

Login using the session:

```Smalltalk
TDShell open: '3.1.0.1'
```

