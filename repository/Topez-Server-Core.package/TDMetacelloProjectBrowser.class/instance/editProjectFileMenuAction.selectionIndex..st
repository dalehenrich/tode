menu actions
editProjectFileMenuAction: listElement selectionIndex: selectionIndex
  | registration entry node |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  entry := registration entry.
  (entry isNil or: [ entry projectPath isNil ])
    ifTrue: [ 
      self inform: 'No project file exists for ' , registration projectName.
      ^ false ].
  node := self topez lookup: entry projectPath , '/project'.
  self editTool editObjects: {node}.
  ^ true