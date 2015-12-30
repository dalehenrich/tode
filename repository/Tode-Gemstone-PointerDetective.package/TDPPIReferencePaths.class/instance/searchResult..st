accessing
searchResult: anArray
  | referencePathCount |
  searchResult := TransientValue value: anArray.
  summary := nil.
  self summary at: 'searchObjects' put: self searchObjects size.
  referencePathCount := 0.
  self searchObjectMap values
    do: [ :ar | referencePathCount := referencePathCount + ar size ].
  self summary at: 'referencePaths' put: referencePathCount