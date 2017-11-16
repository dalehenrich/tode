environment
stonAllGlobalNames
  | globalNames |
  globalNames := IdentitySet new.
  self applicationEnvironment methodCompilationSymbolList
    do: [ :symbolDict | globalNames addAll: symbolDict keys ].
  ^ self objectSerializer toString: globalNames asArray