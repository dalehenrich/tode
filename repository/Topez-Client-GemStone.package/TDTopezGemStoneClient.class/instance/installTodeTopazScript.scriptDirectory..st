builtins
installTodeTopazScript: forceGLASSInstall scriptDirectory: scriptDirectory
	| stream desc |
	stream := WriteStream on: String new.
	desc := self sessionDescription.
	stream
		nextPutAll: 'set user ' , desc userId , ' password ' , desc password;
		cr;
		nextPutAll: 'set gemstone ' , desc stoneNRS;
		cr;
		nextPutAll: 'set gemnetid ' , desc gemNRS;
		cr;
		nextPutAll: 'run';
		cr;
		nextPutAll: (self installUpgradeGlassString: scriptDirectory);
		cr;
		nextPut: $%;
		cr;
		nextPutAll: 'run';
		cr;
		nextPutAll: (self installMetacelloString: scriptDirectory);
		cr;
		nextPut: $%;
		cr;
		nextPutAll: 'run';
		cr;
		nextPutAll: (self installTodeGLASS1String: scriptDirectory);
		cr;
		nextPut: $%;
		cr;
		nextPutAll: 'run';
		cr;
		nextPutAll: (self installTodeString: scriptDirectory);
		cr;
		nextPut: $%;
		cr;
		yourself.
	^ stream contents