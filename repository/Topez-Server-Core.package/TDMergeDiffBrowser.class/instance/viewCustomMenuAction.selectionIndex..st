menu actions
viewCustomMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation initEditDefinition.
      mergeOperation viewCustom.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'