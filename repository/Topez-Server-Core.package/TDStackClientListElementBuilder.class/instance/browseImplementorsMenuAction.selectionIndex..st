menu actions
browseImplementorsMenuAction: listElement selectionIndex: selectionIndex
  | selector defs |
  self object navigateFrame: selectionIndex.
  selector := self object currentFrame selector.
  defs := TDMethodDefinition implementorsOf: selector.
  defs
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        yourself).
  ^ true