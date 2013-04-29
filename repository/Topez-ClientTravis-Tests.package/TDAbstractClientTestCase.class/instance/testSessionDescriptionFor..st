as yet unclassified
testSessionDescriptionFor: gemstoneVersion
  ^ OGCustomSessionDescription new
    name: 'testing';
    gemstoneVersion: gemstoneVersion;
    gciLibraryName: 'libgcirpc-' , gemstoneVersion , '-32.so';
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
    yourself