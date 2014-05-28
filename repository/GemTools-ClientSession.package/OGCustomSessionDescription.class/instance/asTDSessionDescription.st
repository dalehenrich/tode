conversion
asTDSessionDescription
	^ TDSessionDescription new
	name: self name ;
    gemstoneVersion: self gemstoneVersion;
    adornmentColor: self adornmentColor;
    stoneHost: self stoneHost;
    stoneName: self stoneName;
    gemHost: self gemHost;
    netLDI: self netLDI;
    gemTask: self gemTask;
    userId: self userId;
    password: self password;
    osUserId: self osUserId;
    osPassword: self osPassword;
gciLibraryName: self gciLibraryName;
    backupDirectory: self backupDirectory;
    dataDirectory: self dataDirectory;
    yourself