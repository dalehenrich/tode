accessing
currentBranchName
  currentBranchName
    ifNil: [ 
      currentBranchName := MetacelloPlatform current
        gitBranchNameFor: self gitRepoDirectoryPath ].
  ^ currentBranchName