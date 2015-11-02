tode installation
installMetacelloString: options
	| filePath |
	filePath := self filePath: 'loadMetacello.ws' fromScriptPathOptions: options.
	filePath asFileReference readStreamDo: [ :fileStream | ^ fileStream contents ]