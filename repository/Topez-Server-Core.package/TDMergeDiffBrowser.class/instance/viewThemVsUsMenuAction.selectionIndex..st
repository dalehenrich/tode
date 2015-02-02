menu actions
viewThemVsUsMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation viewThemVsUs.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'