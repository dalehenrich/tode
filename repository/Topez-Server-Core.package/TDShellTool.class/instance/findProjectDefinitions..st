as yet unclassified
findProjectDefinitions: regexPattern
  | regex defs |
  regex := self findRegex: regexPattern.
  regex ifNil: [ ^ #() ].
  defs := Set new.
  (Metacello image
    project: [ :projectSpec | regex search: projectSpec name ];
    list)
    do: [ :projectSpec | 
      defs
        addAll:
          (TDConfigurationDefinition new projectSpec: projectSpec) classDefinitions ].
  ^ defs