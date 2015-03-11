tode installation
installUpgradeGlassString: options
	| filePath |
	filePath := self filePath: 'upgradeGLASS.ws' fromScriptPathOptions: options.
	filePath asFileReference readStreamDo: [ :fileStream | ^ fileStream contents ]