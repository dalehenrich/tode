as yet unclassified
source
  | oopType |
  firstSource
    ifNotNil: [ 
      | source |
      source := self firstSource.
      firstSource := nil.
      ^ source ].
  ^ self topez getSourceForClientSourceElement: self