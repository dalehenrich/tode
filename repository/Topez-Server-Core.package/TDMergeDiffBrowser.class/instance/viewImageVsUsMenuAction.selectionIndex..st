menu actions
viewImageVsUsMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation viewImageVsUs.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'