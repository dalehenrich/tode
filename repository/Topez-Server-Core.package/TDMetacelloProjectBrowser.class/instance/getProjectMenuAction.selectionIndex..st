menu actions
getProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration loads |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  registration getProjectUsing: projectTool.
  ^ #'refreshView'