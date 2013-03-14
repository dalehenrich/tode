accessing
gciLibrary
  | libraryClass library |
  libraryClass := GciLibrary withAllSubclasses
    detect: [ :each | each isClassForVersion: self gemstoneVersion ].
  ExternalAddress startUp: true.
  ^ libraryClass libraryNamed: self gciLibraryName