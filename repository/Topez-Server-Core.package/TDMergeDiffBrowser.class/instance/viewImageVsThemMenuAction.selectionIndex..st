menu actions
viewImageVsThemMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation viewImageVsThem.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'