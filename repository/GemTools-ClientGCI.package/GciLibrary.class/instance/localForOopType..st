Wrapper
localForOopType: anOopType
  self
    critical: [ :lib | 
      | type |
      type := lib apiGciFetchObjImpl: anOopType.
      type = 1
        ifTrue: [ ^ lib localForBytes: anOopType ].
      type = 3
        ifTrue: [ ^ lib localForSpecial: anOopType ].
      ^ anOopType ]