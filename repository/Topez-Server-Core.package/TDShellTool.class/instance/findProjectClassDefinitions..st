as yet unclassified
findProjectClassDefinitions: regexPattern
  | defs |
  defs := Set new.
  (self findProjectDefinitions: regexPattern)
    do: [ :projectDef | defs addAll: projectDef classDefinitions ].
  ^ defs