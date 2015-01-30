menu actions
selectCustomMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation selectCustom.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'