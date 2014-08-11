accessing
currentVersionString
  currentVersionString
    ifNil: [ currentVersionString := self registration currentVersionString ].
  ^ currentVersionString