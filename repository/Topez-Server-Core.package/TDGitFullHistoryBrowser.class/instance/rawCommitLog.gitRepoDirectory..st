initialization
rawCommitLog: aString gitRepoDirectory: aDirectory
  self gitRepoDirectory: aDirectory.
  self history: (self parseRawOneLineCommitLog: aString) asArray