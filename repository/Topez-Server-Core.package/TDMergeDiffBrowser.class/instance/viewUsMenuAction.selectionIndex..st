menu actions
viewUsMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation viewUs.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'