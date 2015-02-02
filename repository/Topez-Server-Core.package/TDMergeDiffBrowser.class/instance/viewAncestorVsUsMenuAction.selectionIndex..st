menu actions
viewAncestorVsUsMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation viewAncestorVsUs.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'