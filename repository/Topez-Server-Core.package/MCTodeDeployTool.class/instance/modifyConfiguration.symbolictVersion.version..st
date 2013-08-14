as yet unclassified
modifyConfiguration: configurationClass symbolictVersion: symbolicVersionSymbol version: versionString
  "remove existing symbolic version declarations and add a single #common declaration"

  (MetacelloToolBox configurationNamed: configurationClass name asString)
    modifySymbolicVersionMethodFor: symbolicVersionSymbol
      symbolicVersionSpecsDo: [ :symbolicVersionSpec | false ];
    addSymbolicSection: #'common' version: versionString;
    commitMethod