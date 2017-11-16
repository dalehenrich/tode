testing
isSmalltalkCIInstalled
	^ (Smalltalk at: #GsDevKit_home ifPresent: [ Smalltalk at: #SCIGemStoneServerConfigSpec ifPresent: [ true ] ]) notNil