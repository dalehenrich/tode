tode installation
installUpgradeGlassString: aDirectory
	self filetreeUtilityClass readStreamFor: 'upgradeGLASS.ws' in: aDirectory do: [ :fileStream | ^ fileStream contents ]