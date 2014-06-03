menu actions
loadProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration loads |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  registration loadProjectUsing: projectTool.
  listElement topez commitTransaction.
  ^ #'refreshView'