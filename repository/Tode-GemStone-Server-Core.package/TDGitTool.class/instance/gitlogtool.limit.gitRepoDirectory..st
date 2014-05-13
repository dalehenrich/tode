as yet unclassified
gitlogtool: commitish limit: limit gitRepoDirectory: gitRepoDirectory
  | commitLog |
  commitLog := self
    gitlogIn: gitRepoDirectory
    with: '--oneline -' , limit printString , ' ' , commitish.
  (TDGitFullHistoryBrowser new
    topez: self topez;
    commitish1: commitish;
    commitish2: commitish;
    rawCommitLog: commitLog gitRepoDirectory: gitRepoDirectory;
    windowLabel: 'Commit Log ' , commitish;
    yourself) open.
  ^ commitLog