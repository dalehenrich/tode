tode installation
installTodeString: options
	| filePath |
	filePath := self filePath: 'installTode.ws' fromScriptPathOptions: options.
	filePath asFileReference readStreamDo: [ :fileStream | ^ fileStream contents ]