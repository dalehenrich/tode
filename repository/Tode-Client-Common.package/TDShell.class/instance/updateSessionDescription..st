session description builtin
updateSessionDescription: options
	| sessionDescription gemstoneVersion libExtension |
	sessionDescription := self topezClient sessionDescription.
	options at: 'netldi' ifPresent: [ :netldiName | sessionDescription netLDI: netldiName ].
	options at: 'version' ifPresent: [ :version | sessionDescription gemstoneVersion: version ].
	options at: 'stoneName' ifPresent: [ :stoneName | sessionDescription stoneName: stoneName ].
	options
		at: 'serverHost'
		ifPresent: [ :hostName | 
			sessionDescription
				stoneHost: hostName;
				gemHost: hostName ].
	libExtension := GciLibrary isOnLinux
		ifTrue: [ 'so' ]
		ifFalse: [ 
			GciLibrary isOnMacintosh
				ifTrue: [ 'dylib' ]
				ifFalse: [ 'dll' ] ].
	gemstoneVersion := sessionDescription gemstoneVersion.
	sessionDescription gciLibraryName: 'libgcirpc-' , gemstoneVersion , '-32.' , libExtension.
	^ sessionDescription editTemplate