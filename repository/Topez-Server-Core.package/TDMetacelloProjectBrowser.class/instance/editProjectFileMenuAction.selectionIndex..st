menu actions
editProjectFileMenuAction: listElement selectionIndex: selectionIndex
  | registration entryNode entry |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  entryNode := registration
    entryNode: nil
    projectPath: TDProjectEntryDefinition sys_stone_projects
    topez: topez.
  entry := registration entry.
  entryNode
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowLabel:
            entryNode printString , ' (' , entry projectPath , entryNode name , ')';
        yourself).
  ^ true