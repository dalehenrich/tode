as yet unclassified
findProjectClassDefinitions: regexPattern
  | defs |
  defs := Set new.
  self
    findProjectDefinitions: regexPattern
    do: [ :projectSpec | 
      defs
        addAll:
          (TDConfigurationDefinition new projectSpec: projectSpec) classDefinitions ].
  ^ defs