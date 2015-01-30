menu actions
viewUsVsCustomMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation viewUsVsCustom.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'