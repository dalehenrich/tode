*Topez-Common-Pharo-Core
source
  firstSource
    ifNotNil: [ 
      | source |
      source := self firstSource.
      firstSource := nil.
      ^ source ].
  ^ self topez getSourceForClientSourceElement: self