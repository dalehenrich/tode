menu actions
viewUsVsThemMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation viewUsVsThem.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'