builtins
installTodeString: aDirectory
	self filetreeUtilityClass readStreamFor: 'installTode.ws' in: aDirectory do: [ :fileStream | ^ fileStream contents ]