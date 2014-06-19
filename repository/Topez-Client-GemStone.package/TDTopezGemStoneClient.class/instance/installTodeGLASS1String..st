tode installation
installTodeGLASS1String: aDirectory
	self filetreeUtilityClass readStreamFor: 'installGLASS1.ws' in: aDirectory do: [ :fileStream | ^ fileStream contents ]