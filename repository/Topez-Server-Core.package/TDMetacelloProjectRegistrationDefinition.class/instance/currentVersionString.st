accessing
currentVersionString
  currentVersionString ifNil: [ currentVersionString := self versionString ].
  ^ currentVersionString