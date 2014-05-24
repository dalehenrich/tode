as yet unclassified
= aManPage
  (aManPage isKindOf: self class)
    ifFalse: [ ^ false ].
  ^ self asText asString = aManPage asText asString