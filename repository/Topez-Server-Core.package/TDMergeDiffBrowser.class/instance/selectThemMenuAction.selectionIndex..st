menu actions
selectThemMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation selectThem.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'