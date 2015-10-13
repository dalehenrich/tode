tode installation
filePath: filename fromScriptPathOptions: options
	^ options
		at: 'scriptPath'
		ifPresent: [ :path | path , '/' , filename ]
		ifAbsent: [ TDShell lookupServerScripts: filename ]