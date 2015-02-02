menu actions
viewAncestorVsCustomMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation viewAncestorVsCustom.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'