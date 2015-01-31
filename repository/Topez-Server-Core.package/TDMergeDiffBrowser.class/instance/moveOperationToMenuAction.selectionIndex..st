menu actions
moveOperationToMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation copiedOperation filePath |
  self selectedOperations
    do: [ :mergeOperation | 
      copiedOperation := self copyMergeOperation: mergeOperation.
      self merger conflicts add: copiedOperation.
      mergeOperation
        selectDeletion;
        tag: 'deleted by move' ].
  self merger
    conflicts:
      (self merger conflicts sorted: [ :a :b | a filePath <= b filePath ]).
  ^ #'refreshList'