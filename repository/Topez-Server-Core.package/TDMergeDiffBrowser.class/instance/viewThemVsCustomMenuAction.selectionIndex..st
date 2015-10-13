menu actions
viewThemVsCustomMenuAction: listElement selectionIndex: selectionIndex
  self selectedOperations
    do: [ :mergeOperation | 
      mergeOperation viewThemVsCustom.
      self editOperation: mergeOperation listElement: listElement ].
  ^ #'refreshList'