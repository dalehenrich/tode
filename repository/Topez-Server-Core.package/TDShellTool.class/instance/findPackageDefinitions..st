find
findPackageDefinitions: regexPattern
  | regex defs |
  regex := self findRegex: regexPattern.
  regex ifNil: [ ^ #() ].
  defs := Set new.
  (MCWorkingCopy allManagers select: [ :wc | regex search: wc packageName ])
    do: [ :wc | 
      defs
        addAll:
          (TDMcPackageDefinition new packageName: wc packageName) classDefinitions ].
  ^ defs