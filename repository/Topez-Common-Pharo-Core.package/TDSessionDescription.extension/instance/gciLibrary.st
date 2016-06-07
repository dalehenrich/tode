*Topez-Common-Pharo-Core
gciLibrary
	| libraryClass library libName ext |
	libraryClass := GciLibrary withAllSubclasses detect: [ :each | each isClassForVersion: self gemstoneVersion ].
	ExternalAddress startUp: true.
	libName := self gciLibraryName.
	ext := self gciLibraryExtension.
	(libName endsWith: ext)
		ifFalse: [ libName := libName , ext ].
	library := libraryClass libraryNamed: libName.
	library apiGciInit.
	^ library