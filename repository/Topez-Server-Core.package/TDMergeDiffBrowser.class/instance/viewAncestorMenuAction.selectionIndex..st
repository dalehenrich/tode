menu actions
viewAncestorMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation viewAncestor.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'