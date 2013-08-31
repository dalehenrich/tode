as yet unclassified
cymSave: configName to: cypressRepository
  | registration projectSpec packageSpecs |
  registration := self getRegistrationFor: configName.
  projectSpec := registration lookupBaselineSpec.
  packageSpecs := self modifiedPackagesForProjectSpec: projectSpec.
  packageSpecs
    do: [ :packageSpec | self cypSave: packageSpec name to: cypressRepository ].
  ^ packageSpecs