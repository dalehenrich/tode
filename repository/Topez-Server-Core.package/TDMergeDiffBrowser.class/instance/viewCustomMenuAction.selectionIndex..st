menu actions
viewCustomMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation viewCustom.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'