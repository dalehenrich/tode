menu actions
browseMethodVersionsMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def defs |
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  defs := def versionsOf.
  defs
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        yourself).
  ^ true