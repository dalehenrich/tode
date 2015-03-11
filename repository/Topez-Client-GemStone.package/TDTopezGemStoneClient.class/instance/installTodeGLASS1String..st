tode installation
installTodeGLASS1String: options
	| filePath |
	filePath := self filePath: 'installGLASS1.ws' fromScriptPathOptions: options.
	filePath asFileReference readStreamDo: [ :fileStream | ^ fileStream contents ]