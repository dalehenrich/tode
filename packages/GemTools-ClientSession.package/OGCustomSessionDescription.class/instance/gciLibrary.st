accessing
gciLibrary
  | libraryClass library |
  libraryClass := GciLibrary withAllSubclasses
    detect: [ :each | each isClassForVersion: self gemstoneVersion ].
  ExternalAddress startUp: true.
  library := libraryClass libraryNamed: self gciLibraryName.
  library apiGciInit.
  ^ library