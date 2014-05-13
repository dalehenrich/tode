as yet unclassified
gitlogtool: commitish limit: limit gitRepoDirectory: gitRepoDirectory label: labelString
  | commitLog |
  commitLog := self
    gitlogIn: gitRepoDirectory
    with: '--oneline -' , limit printString , ' ' , commitish.
  (TDGitFullHistoryBrowser new
    topez: self topez;
    commitish1: commitish;
    commitish2: commitish;
    rawCommitLog: commitLog gitRepoDirectory: gitRepoDirectory;
    windowLabel: labelString;
    yourself) open.
  ^ commitLog