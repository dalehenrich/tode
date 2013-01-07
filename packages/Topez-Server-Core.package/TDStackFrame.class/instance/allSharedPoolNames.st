as yet unclassified
allSharedPoolNames
  | allSharedPools sharedPoolNames |
  self inClass ifNil: [ ^ nil ].
  sharedPoolNames := IdentitySet new.
  self inClass allSharedPools do: [ :poolDict | sharedPoolNames addAll: poolDict keys ].
  allSharedPools asArray.
  ^ allSharedPools