testing
hasGitRepository
  ^ self hasFileTreeRepo
    and: [ 
      [ MetacelloPlatform current gitIsGitDirectoryPath: self gitRepoDirectoryPath ]
        on: Error
        do: [ :ex | ex return: false ] ]