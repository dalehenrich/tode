as yet unclassified
browseCommitLogForMergeOp: mergeOperation source: source destination: destination gitRepoDirectory: gitRepoDirectory windowLabel: windowLabel
  | commitLog |
  commitLog := self
    gitlogIn: gitRepoDirectory
    with:
      '--date=relative --format="%h %cd %s" ' , source , '..' , destination , ' -- '
        , mergeOperation filePath.
  ^ (TDGitHistoryBrowser new
    topez: self topez;
    source: source;
    destination: destination;
    theOperation: mergeOperation
      rawCommitLog: commitLog
      gitRepoDirectory: gitRepoDirectory;
    windowLabel: windowLabel;
    yourself) open