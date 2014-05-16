testing
isDirty
  ^ (MetacelloPlatform current gitStatusFor: self gitRepoDirectoryPath) isEmpty
    not