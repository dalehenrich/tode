testing
isGitDirty
  self hasGitRepository
    ifFalse: [ ^ false ].
  ^ (MetacelloPlatform current gitStatusFor: self gitRepoDirectoryPath)
    ifNil: [ ^ false ]
    ifNotNil: [ :response | ^ response isEmpty not ]