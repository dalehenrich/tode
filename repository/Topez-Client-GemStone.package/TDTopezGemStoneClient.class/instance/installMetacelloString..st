tode installation
installMetacelloString: options
	| filePath |
	filePath := self filePath: 'installMetacello.ws' fromScriptPathOptions: options.
	filePath asFileReference readStreamDo: [ :fileStream | ^ fileStream contents ]