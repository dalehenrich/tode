accessing
gitRepoDirectoryPath
  gitRepoDirectoryPath
    ifNil: [ gitRepoDirectoryPath := self gitRepoDirectory fullName ].
  ^ gitRepoDirectoryPath