as yet unclassified
_extractPackageDefinitions
  | registrationDef defs |
  defs := Dictionary new.
  registrationDef := self projectRegistrationDef.
  registrationDef workingCopies
    do: [ :wc | 
      defs
        at: wc packageName
        put: (TDMcPackageDefinition new packageName: wc packageName) ].
  ^ defs