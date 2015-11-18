project api
projectBrowseProjectEntryFor: registration
  | entryNode entry |
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
  ^ entry