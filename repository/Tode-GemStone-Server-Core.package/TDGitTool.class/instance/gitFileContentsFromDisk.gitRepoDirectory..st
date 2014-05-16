as yet unclassified
gitFileContentsFromDisk: filePath gitRepoDirectory: gitRepoDirectory
  gitRepoDirectory
    readOnlyFileNamed: filePath
    do: [ :fileStream | ^ fileStream contents ]