menu actions (git)
gitCommitLogMenuAction: listElement selectionIndex: selectionIndex
  | registration |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  ^ self projectTool projectCommitLog: registration logLimit: 100