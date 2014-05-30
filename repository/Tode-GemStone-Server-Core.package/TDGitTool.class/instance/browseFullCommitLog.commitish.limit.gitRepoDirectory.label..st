as yet unclassified
browseFullCommitLog: commitLogBlock commitish: commitish limit: limit gitRepoDirectory: gitRepoDirectory label: labelString
  ^ (TDGitFullHistoryBrowser new
    topez: self topez;
    source: commitish;
    destination: commitish;
    rawCommitLogBlock: commitLogBlock gitRepoDirectory: gitRepoDirectory;
    windowLabel: labelString;
    yourself) open