accessing
currentVersionString
  "the version that is loaded into the current image (i.e., the git commitish of the clone when the project was loaded)"

  currentVersionString
    ifNil: [ 
      currentVersionString := self isLoadedInImage not
        ifTrue: [ '' ]
        ifFalse: [ 
          [ self registration currentVersionString ]
            on: Error
            do: [ :ex | ex return: '???' ] ] ].
  ^ currentVersionString