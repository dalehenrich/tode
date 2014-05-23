as yet unclassified
browseCommitLogForMergeOp: mergeOperation commitish1: commitish1 commitish2: commitish2 gitRepoDirectory: gitRepoDirectory windowLabel: windowLabel
  | commitLog |
  commitLog := self
    gitlogIn: gitRepoDirectory
    with:
      '--date=relative --format="%h %cd %s" ' , commitish1 , '..' , commitish2
        , ' -- ' , mergeOperation filePath.
  ^ (TDGitHistoryBrowser new
    topez: self topez;
    commitish1: commitish1;
    commitish2: commitish2;
    theOperation: mergeOperation
      rawCommitLog: commitLog
      gitRepoDirectory: gitRepoDirectory;
    windowLabel: windowLabel;
    yourself) open