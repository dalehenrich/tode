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
    commitish1: self commitish1
    commitish2: self commitish2
    gitRepoDirectory: self gitRepoDirectory
    windowLabel: 'Commit Log: ' , mergeOperation label.
  ^ true