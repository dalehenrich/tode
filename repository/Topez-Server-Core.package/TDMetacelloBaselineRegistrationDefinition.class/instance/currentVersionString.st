accessing
currentVersionString
  self isLoadedInImage not
    ifTrue: [ ^ '' ].
  ^ self registration currentVersionString