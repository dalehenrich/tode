menu actions
revertProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration loads |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  registration revertProjectUsing: projectTool.
  listElement topez commitTransaction.
  ^ #'refreshView'