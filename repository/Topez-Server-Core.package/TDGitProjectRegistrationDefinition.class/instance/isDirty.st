testing
isDirty
  isDirty
    ifNil: [ 
      isDirty := (MetacelloPlatform current gitStatusFor: self gitRepoDirectoryPath)
        isEmpty not ].
  ^ isDirty