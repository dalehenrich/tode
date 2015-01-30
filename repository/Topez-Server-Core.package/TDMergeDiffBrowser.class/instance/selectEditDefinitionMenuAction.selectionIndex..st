menu actions
selectEditDefinitionMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation selectEdit.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'