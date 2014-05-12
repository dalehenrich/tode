menu actions
commitFileHistory: listElement selectionIndex: selectionIndex
  "browse commit history for selected element"

  | mergeOperation gitTool commitLog |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  gitTool := self gitTool.
  commitLog := gitTool
    gitlogIn: self gitRepoDirectory
    with: '--oneline -- ' , mergeOperation filePath.
  (TDGitHistoryBrowser new
    topez: listElement topez;
    commitish2: self commitish2;
    theOperation: mergeOperation
      rawCommitLog: commitLog
      gitRepoDirectory: self gitRepoDirectory;
    windowLabel: 'commit Log: ' , mergeOperation label;
    yourself) open.
  ^ true