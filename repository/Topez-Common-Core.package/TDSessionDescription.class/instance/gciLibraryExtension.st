accessing
gciLibraryExtension
	GciLibrary isOnLinux
		ifTrue: [ ^ '.so' ].
	GciLibrary isOnMacintosh
		ifTrue: [ ^ '.dylib' ].
	GciLibrary isOnWindows
		ifTrue: [ ^ '.dll' ].
	self error: 'Unknown OS platform'