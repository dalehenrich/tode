reflection
configurationOf
  | configDef |
  configDef := TDConfigurationList current definitionList
    detect: [ :configurationDef | (configurationDef packageNamed: self packageName ifAbsent: [  ]) notNil ]
    ifNone: [  ].
  ^ configDef