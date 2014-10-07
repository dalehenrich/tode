accessing
currentBranchName
  currentBranchName
    ifNil: [ 
      currentBranchName := self isLoadedInImage not
        ifTrue: [ '' ]
        ifFalse: [ 
          [ self registration currentBranchName ]
            on: Error
            do: [ :ex | ex return: '???' ] ] ].
  ^ currentBranchName