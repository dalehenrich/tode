menu actions
viewAncestorVsThemMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation viewAncestorVsThem.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'