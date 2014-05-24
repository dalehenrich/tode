initialization
rawCommitLog: aString gitRepoDirectory: aDirectory
  self gitRepoDirectory: aDirectory.
  commitLogList := (self parseRawOneLineCommitLog: aString) asArray