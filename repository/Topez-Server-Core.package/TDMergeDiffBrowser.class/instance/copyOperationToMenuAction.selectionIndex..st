menu actions
copyOperationToMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation copiedOperation filePath |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  copiedOperation := mergeOperation copy.
  filePath := (GsTextInteraction
    prompt: 'Enter new file path'
    template: copiedOperation filePath) signal.
  copiedOperation filePath: filePath.
  (#(#'added' #'modified' #'deleted') includes: copiedOperation stage)
    ifFalse: [ copiedOperation resolved: false ].
  self merger conflicts add: copiedOperation.
  self merger
    conflicts:
      (self merger conflicts sorted: [ :a :b | a filePath <= b filePath ]).
  ^ #'refreshList'