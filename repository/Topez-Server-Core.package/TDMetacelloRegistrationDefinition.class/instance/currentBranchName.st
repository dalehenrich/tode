accessing
currentBranchName
  self isLoadedInImage not
    ifTrue: [ ^ '' ].
  ^ self registration currentBranchName