as yet unclassified
gitlogtool: commitish limit: limit gitRepoDirectory: gitRepoDirectory label: labelString
  | commitLog |
  commitLog := self
    gitlogIn: gitRepoDirectory
    with:
      '--date=relative --format="%h %cd %s" -' , limit printString , ' ' , commitish.
  (TDGitFullHistoryBrowser new
    topez: self topez;
    commitish1: commitish;
    commitish2: commitish;
    rawCommitLog: commitLog gitRepoDirectory: gitRepoDirectory;
    windowLabel: labelString;
    yourself) open.
  ^ commitLog