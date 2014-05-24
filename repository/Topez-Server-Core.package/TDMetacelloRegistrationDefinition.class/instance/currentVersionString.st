accessing
currentVersionString
  (self isLoadedInImage not and: [ self isBaselineBased ])
    ifTrue: [ ^ '' ].
  ^ self registration currentVersionString