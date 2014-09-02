accessing
gitRepoDirectoryPath
  gitRepoDirectoryPath
    ifNil: [ gitRepoDirectoryPath := self entry gitRepoDirectoryPath ].
  ^ gitRepoDirectoryPath