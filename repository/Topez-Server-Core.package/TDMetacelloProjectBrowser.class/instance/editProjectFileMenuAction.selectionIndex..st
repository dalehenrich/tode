menu actions
editProjectFileMenuAction: listElement selectionIndex: selectionIndex
  | registration entry node |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  entry := registration entry.
  entry
    ifNil: [ 
      self inform: 'No project file exists'.
      ^ false ].
  node := self topez lookup: entry projectPath , '/project'.
  self editTool editObjects: {node}.
  ^ true