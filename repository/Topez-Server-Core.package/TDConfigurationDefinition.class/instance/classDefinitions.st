as yet unclassified
classDefinitions
  | defs registrationDef extensionDefinitions |
  defs := OrderedCollection new.
  registrationDef := self projectRegistrationDef.
  extensionDefinitions := Dictionary new.
  registrationDef workingCopies
    do: [ :wc | 
      | packageInfo |
      packageInfo := wc packageInfo.
      self
        classDefinitionsFor: packageInfo
        definitions: defs
        extensionDefinitions: extensionDefinitions ].
  ^ defs