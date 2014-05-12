initialization
theOperation: anObject rawCommitLog: aString gitRepoDirectory: aDirectory
  | ops |
  self
    theOperation: anObject;
    gitRepoDirectory: aDirectory.
  ops := (self parseRawOneLineCommitLog: aString) asArray
    collect: [ :oneline | 
      | op |
      op := self operationFrom: oneline.
      op labelString: oneline.
      op ].
  self history: ops