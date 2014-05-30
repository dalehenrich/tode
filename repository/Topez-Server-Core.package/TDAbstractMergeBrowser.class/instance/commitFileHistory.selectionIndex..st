menu actions
commitFileHistory: listElement selectionIndex: selectionIndex
  "browse commit history for selected element"

  | mergeOperation gitTool |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  gitTool := self gitTool.
  gitTool
    browseCommitLogForMergeOp: mergeOperation
    source: self source
    destination: self destination
    gitRepoDirectory: self gitRepoDirectory
    windowLabel: 'Commit Log: ' , mergeOperation label.
  ^ true