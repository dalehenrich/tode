accessing
versionString
  self isLoadedInImage not
    ifTrue: [ ^ self projectSpec versionString ifNil: [ ^ '' ] ].
  ^ self versionInfo versionString