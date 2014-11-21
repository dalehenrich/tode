menu actions
editProjectFileMenuAction: listElement selectionIndex: selectionIndex
  | registration entry node |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  entry := registration entry.
  (entry isNil or: [ entry projectPath isNil ])
    ifTrue: [ 
      entry := registration createTemplateProjectEntry.
      node := entry
        createProjectEntryNode: '/sys/stone/projects'
        topez: self topez ]
    ifFalse: [ node := self topez lookup: entry projectPath , entry projectNodeName ].
  self editTool editObjects: {node}.
  ^ true