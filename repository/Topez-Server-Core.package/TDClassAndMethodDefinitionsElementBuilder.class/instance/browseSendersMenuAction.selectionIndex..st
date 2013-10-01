menu actions
browseSendersMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def defs |
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  defs := def sendersOf.
  defs
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        yourself).
  ^ true