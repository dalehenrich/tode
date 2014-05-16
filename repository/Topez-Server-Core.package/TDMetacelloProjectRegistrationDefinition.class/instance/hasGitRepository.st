testing
hasGitRepository
  ^ self hasFileTreeRepo
    and: [ MetacelloPlatform current gitIsGitDirectoryPath: self gitRepoDirectoryPath ]