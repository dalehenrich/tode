menu actions
commitLogMenuAction: listElement selectionIndex: selectionIndex
  | registration |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  ^ registration hasGitRepository
    ifTrue: [ self gitCommitLogMenuAction: listElement selectionIndex: selectionIndex ]
    ifFalse: [ 
      self
        configurationCommitLogMenuAction: listElement
        selectionIndex: selectionIndex ]