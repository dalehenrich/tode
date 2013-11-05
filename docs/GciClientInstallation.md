# GCI Client Installation


##on Linux

The GCI libraries must be in the same directory as the image file you are using:

```Shell
cp $GEMSTONE/lib32/*.so <path_to_Pharo_image_file>
```

or in the same directory as the vm executable (along with the other
plugins):

```Shell
cp $GEMSTONE/lib32/*.so <path_to_vm_executable>
```

## on Mac

The GCI libraries must be in the Cog vm's `MacOS/Plugins` directory: 

```Shell
cp $GEMSTONE/lib32/*.dylib <path_to_Cog_vm>/Contents/MacOS/Plugins
```

## Pharo Image Tode Installation

Be sure to update Metacello before this step.

*See the [Metacello installation instructions](https://github.com/dalehenrich/metacello-work/blob/master/README.md) 
for details on installing Metacello.*

```Smalltalk
Metacello new
    baseline: 'Tode';
    repository: 'github://dalehenrich/tode:master/repository';
    load: 'GemStone Dev'.
``` 

## Tode setup


Define window sizes.

1440x900 display (using Consolas Regular 10 FreeType font):

```Smalltalk
TDTopezGemStoneClient
      windowOrigin: 5@0.5;
      listWindowWidth: 24;
      codeWindowHeight: 17; "21"
      codeWindowWidth: 80;
      shellWindowHeight: 17; "14"
      debuggerWindowWidth: 72;
      initialize.
```

1280x800 display (using Bitmap DejaVu Sans Regular 9 font):

```Smalltalk
TDTopezGemStoneClient
        windowOrigin: 1.5@0.5;
        listWindowWidth: 15;
        codeWindowHeight:17;
        codeWindowWidth: 54;
        shellWindowHeight:17;
        debuggerWindowWidth:24;
        initialize .
```

Define a session description:

```Smalltalk
| sessionDescription |
sessionDescription := OGCustomSessionDescription new
    name: 'tode';
    gemstoneVersion: '3.1.0.4';
    gciLibraryName: 'libgcirpc-3.1.0.4-32.dylib'; "or libgcirpc-3.1.0.4-32.so for Linux"
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


Login using the session:

```Smalltalk
TDShell open: 'tode'
```

