as yet unclassified
_configurationGivenPackageDefinition: pkgDef
  | configDef |
  pkgDef ifNil: [ ^ nil ].
  configDef := TDConfigurationList current definitionList
    detect: [ :configurationDef | (configurationDef packageNamed: pkgDef packageName ifAbsent: [  ]) notNil ]
    ifNone: [  ].
  ^ configDef