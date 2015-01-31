menu actions
viewImageVsCustomMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation viewImageVsCustom.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'