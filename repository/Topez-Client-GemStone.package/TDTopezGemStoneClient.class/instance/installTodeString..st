tode installation
installTodeString: options
	| filePath |
	filePath := self filePath: 'loadTode.ws' fromScriptPathOptions: options.
	filePath asFileReference readStreamDo: [ :fileStream | ^ fileStream contents ]