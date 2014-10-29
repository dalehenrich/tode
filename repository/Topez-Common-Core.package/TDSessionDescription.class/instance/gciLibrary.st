accessing
gciLibrary
  | libraryClass library libName ext |
  libraryClass := GciLibrary withAllSubclasses
    detect: [ :each | each isClassForVersion: self gemstoneVersion ].
  (Smalltalk at: #'ExternalAddress') startUp: true.
  libName := self gciLibraryName.
  ext := self gciLibraryExtension.
  (libName endsWith: ext)
    ifFalse: [ libName := libName , ext ].
  library := libraryClass libraryNamed: libName.
  library apiGciInit.
  ^ library