private
childMapForComposition: forComposition
  | children |
  children := Dictionary new.
  self entryList reversed
    do: [ :entry | 
      entry
        childrenDo: [ :childNode | 
          | value |
          value := forComposition
            ifTrue: [ entry -> childNode ]
            ifFalse: [ childNode ].
          children at: childNode name put: value ] ].
  ^ children