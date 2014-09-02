accessing
currentVersionString
  currentVersionString
    ifNil: [ 
      currentVersionString := self isLoadedInImage not
        ifTrue: [ '' ]
        ifFalse: [ self registration currentVersionString ] ].
  ^ currentVersionString