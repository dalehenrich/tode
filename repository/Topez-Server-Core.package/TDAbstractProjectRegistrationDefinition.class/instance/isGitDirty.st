testing
isGitDirty
  self hasGitRepository
    ifFalse: [ ^ false ].
  ^ (MetacelloPlatform current gitStatusFor: self gitRepoDirectoryPath) isEmpty
    not