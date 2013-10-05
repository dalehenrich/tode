as yet unclassified
mmfileout: projectName to: directoryPath defaultHeader: defaultHeader
  | registration projectSpec packageSpecs packageNames |
  registration := self getRegistrationFor: projectName.
  projectSpec := registration lookupBaselineSpec.
  packageSpecs := self packagesForProjectSpec: projectSpec.
  packageNames := packageSpecs collect: [ :spec | spec name ].
  ^ self
    mcfileout: directoryPath
    packageNames: packageNames
    defaultHeader: defaultHeader