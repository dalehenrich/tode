menu actions
viewThemMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation viewThem.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'