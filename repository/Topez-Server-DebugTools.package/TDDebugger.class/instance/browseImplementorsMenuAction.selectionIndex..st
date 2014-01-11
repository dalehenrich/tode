menu actions
browseImplementorsMenuAction: listElement selectionIndex: selectionIndex
  | stack selector defs |
  stack := self theStack.
  stack navigateFrame: selectionIndex.
  selector := stack currentFrame selector.
  defs := TDMethodDefinition implementorsOf: selector.
  defs
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        yourself).
  ^ true