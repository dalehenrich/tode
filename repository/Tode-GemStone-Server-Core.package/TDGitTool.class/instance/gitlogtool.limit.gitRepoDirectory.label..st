as yet unclassified
gitlogtool: commitish limit: limit gitRepoDirectory: gitRepoDirectory label: labelString
  | block |
  block := [ 
  self
    gitlogIn: gitRepoDirectory
    with:
      '--date=relative --format="%h %cd %s" -' , limit printString , ' ' , commitish ].
  (TDGitFullHistoryBrowser new
    topez: self topez;
    commitish1: commitish;
    commitish2: commitish;
    rawCommitLogBlock: block gitRepoDirectory: gitRepoDirectory;
    windowLabel: labelString;
    yourself) open.
  ^ block value