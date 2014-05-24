menu actions
commitHistory: listElement selectionIndex: selectionIndex
  "browse full commit history between comittish1 and commitish2"

  | gitTool block |
  gitTool := self gitTool.
  block := [ 
  gitTool
    gitlogIn: self gitRepoDirectory
    with:
      '--date=relative --format="%h %cd %s" ' , self commitish1 , '..'
        , self commitish2 , ' -- ' ].
  (TDGitFullHistoryBrowser new
    topez: listElement topez;
    commitish1: self commitish1;
    commitish2: self commitish2;
    rawCommitLogBlock: block gitRepoDirectory: self gitRepoDirectory;
    windowLabel: 'commit Log ' , self commitish1 , ' to ' , self commitish2;
    yourself) open.
  ^ true