menu actions
selectCustomMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation initEditDefinition.
      mergeOperation selectCustom.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'