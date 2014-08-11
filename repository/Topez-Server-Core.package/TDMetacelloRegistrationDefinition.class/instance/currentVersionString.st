accessing
currentVersionString
  currentVersionString
    ifNil: [ 
      currentVersionString := (self isLoadedInImage not and: [ self isBaselineBased ])
        ifTrue: [ '' ]
        ifFalse: [ self registration currentVersionString ] ].
  ^ currentVersionString