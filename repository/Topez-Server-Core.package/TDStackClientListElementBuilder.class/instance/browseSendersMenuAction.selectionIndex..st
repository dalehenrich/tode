menu actions
browseSendersMenuAction: listElement selectionIndex: selectionIndex
  | selector defs |
  self object navigateFrame: selectionIndex.
  selector := self object currentFrame selector.
  defs := TDMethodDefinition sendersOf: selector.
  defs
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        yourself).
  ^ true