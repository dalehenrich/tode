menu actions
viewDefaultMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation view: nil.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'