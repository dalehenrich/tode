tode installation
installTodeGLASS1String: options
	| filePath |
	filePath := self filePath: 'loadGLASS1.ws' fromScriptPathOptions: options.
	filePath asFileReference readStreamDo: [ :fileStream | ^ fileStream contents ]