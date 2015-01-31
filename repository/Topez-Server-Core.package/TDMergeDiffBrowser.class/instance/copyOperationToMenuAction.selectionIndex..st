menu actions
copyOperationToMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation copiedOperation filePath |
  self selectedOperations
    do: [ :mergeOperation | 
      copiedOperation := self copyMergeOperation: mergeOperation.
      self merger conflicts add: copiedOperation ].
  self merger
    conflicts:
      (self merger conflicts sorted: [ :a :b | a filePath <= b filePath ]).
  ^ #'refreshList'