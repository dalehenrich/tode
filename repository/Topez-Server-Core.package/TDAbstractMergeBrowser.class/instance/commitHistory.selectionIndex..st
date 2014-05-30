menu actions
commitHistory: listElement selectionIndex: selectionIndex
  "browse full commit history between source and destination"

  | gitTool block |
  gitTool := self gitTool.
  block := [ 
  gitTool
    gitlogIn: self gitRepoDirectory
    with:
      '--date=relative --format="%h %cd %s" ' , self source , '..' , self destination
        , ' -- ' ].
  (TDGitFullHistoryBrowser new
    topez: listElement topez;
    source: self source;
    destination: self destination;
    rawCommitLogBlock: block gitRepoDirectory: self gitRepoDirectory;
    windowLabel: 'commit Log ' , self source , ' to ' , self destination;
    yourself) open.
  ^ true