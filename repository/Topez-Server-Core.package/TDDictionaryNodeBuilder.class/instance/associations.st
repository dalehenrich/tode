as yet unclassified
associations
  associations
    ifNil: [ 
      associations := self object associations asArray
        sorted: [ :a :b | a key asString <= b key asString ] ].
  ^ associations