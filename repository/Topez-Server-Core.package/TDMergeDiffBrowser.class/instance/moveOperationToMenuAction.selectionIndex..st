menu actions
moveOperationToMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation copiedOperation filePath |
  self selectedOperations
    do: [ :mergeOperation | 
      copiedOperation := mergeOperation copy.
      filePath := (GsTextInteraction
        prompt: 'Enter new file path'
        template: copiedOperation filePath) signal.
      filePath
        ifNil: [ 
          "abort operation"
          ^ nil ].
      copiedOperation filePath: filePath.
      (#(#'added' #'modified' #'deleted') includes: copiedOperation stage)
        ifFalse: [ copiedOperation resolved: false ].
      copiedOperation tag: 'moved'.
      self merger conflicts add: copiedOperation.
      mergeOperation
        selectDeletion;
        tag: 'deleted by move' ].
  self merger
    conflicts:
      (self merger conflicts sorted: [ :a :b | a filePath <= b filePath ]).
  ^ #'refreshList'