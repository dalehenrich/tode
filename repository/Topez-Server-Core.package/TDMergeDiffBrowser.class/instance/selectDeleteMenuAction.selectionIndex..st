menu actions
selectDeleteMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation selectDeletion.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'