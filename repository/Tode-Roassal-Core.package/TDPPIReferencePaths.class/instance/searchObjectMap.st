accessing
searchObjectMap
  searchObjectMap
    ifNil: [ 
      | map |
      map := IdentityKeyValueDictionary new.
      self searchResult
        do: [ :ar | 
          (ar at: 2)
            ifTrue: [ map at: (ar at: 1) put: (ar at: 3) ] ].
      searchObjectMap := TransientValue value: map ].
  ^ searchObjectMap value