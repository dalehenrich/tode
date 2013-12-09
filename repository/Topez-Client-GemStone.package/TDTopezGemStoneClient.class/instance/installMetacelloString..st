builtins
installMetacelloString: aDirectory
	self filetreeUtilityClass readStreamFor: 'installMetacello.ws' in: aDirectory do: [ :fileStream | ^ fileStream contents ]