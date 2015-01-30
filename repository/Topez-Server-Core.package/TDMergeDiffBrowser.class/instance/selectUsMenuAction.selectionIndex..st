menu actions
selectUsMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation selectUs.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'