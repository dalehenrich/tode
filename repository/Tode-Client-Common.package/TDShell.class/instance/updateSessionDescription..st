session description builtin
updateSessionDescription: options
	| sessionDescription gemstoneVersion libExtension |
	sessionDescription := self topezClient sessionDescription.
	options at: 'netldi' ifPresent: [ :netldiName | sessionDescription netLDI: netldiName ].
	options
		at: 'version'
		ifPresent: [ :version | gemstoneVersion := version ]
		ifAbsent: [ gemstoneVersion := sessionDescription gemstoneVersion ].
	options at: 'stoneName' ifPresent: [ :stoneName | sessionDescription stoneName: stoneName ].
	libExtension := GciLibrary isOnLinux
		ifTrue: [ 'so' ]
		ifFalse: [ 
			GciLibrary isOnMacintosh
				ifTrue: [ 'dylib' ]
				ifFalse: [ 'dll' ] ].
	sessionDescription gciLibraryName: 'libgcirpc-' , gemstoneVersion , '-32.' , libExtension