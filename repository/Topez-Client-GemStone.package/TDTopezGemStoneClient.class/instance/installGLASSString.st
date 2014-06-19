tode installation
installGLASSString
	^'UserGlobals at: #BootstrapSymbolDictionaryName put: #UserGlobals.
	System commitTransaction.'