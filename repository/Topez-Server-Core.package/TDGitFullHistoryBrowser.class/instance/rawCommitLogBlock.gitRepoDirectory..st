initialization
rawCommitLogBlock: aBlock gitRepoDirectory: aDirectory
  self gitRepoDirectory: aDirectory.
  rawLogBlock := aBlock