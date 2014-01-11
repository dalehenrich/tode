menu actions
browseSendersMenuAction: listElement selectionIndex: selectionIndex
  | stack selector defs |
  stack := self theStack.
  stack navigateFrame: selectionIndex.
  selector := stack currentFrame selector.
  defs := TDMethodDefinition sendersOf: selector.
  defs
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        yourself).
  ^ true