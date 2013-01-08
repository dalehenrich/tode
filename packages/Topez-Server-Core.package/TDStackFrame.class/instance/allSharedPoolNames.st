as yet unclassified
allSharedPoolNames
  | allSharedPools |
  self inClass ifNil: [ ^ nil ].
  allSharedPools := IdentitySet new.
  self inClass allSharedPools do: [ :poolDict | allSharedPools addAll: poolDict keys ].
  allSharedPools asArray.
  ^ allSharedPools