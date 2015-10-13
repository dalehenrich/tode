menu actions
selectAncestorMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation selectAncestor.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'