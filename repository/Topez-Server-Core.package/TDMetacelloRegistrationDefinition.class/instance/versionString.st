accessing
versionString
  versionString
    ifNil: [ 
      versionString := self isLoadedInImage not
        ifTrue: [ self projectSpec versionString ifNotNil: [ :vs | vs ] ifNil: [ '' ] ]
        ifFalse: [ self versionInfo versionString ] ].
  ^ versionString