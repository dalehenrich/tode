environment
stonAllGlobalNames
  | globalNames |
  globalNames := IdentitySet new.
  self symbolList do: [ :symbolDict | globalNames addAll: symbolDict keys ].
  ^ self objectSerializer toString: globalNames asArray