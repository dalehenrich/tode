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
        createProjectEntryNode: '/sys/stone/projects/'
        topez: self topez.
      entry projectPath: '/sys/stone/projects/' ]
    ifFalse: [ node := self topez lookup: entry projectPath , entry projectNodeName ].
  node
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowLabel:
            node printString , ' (' , entry baseProjectPath , node name , ')';
        yourself).
  ^ true