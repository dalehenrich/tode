menu actions
browseMethodVersionsMenuAction: listElement selectionIndex: selectionIndex
  | stack frame def defs |
  stack := self theStack.
  stack navigateFrame: selectionIndex.
  frame := stack currentFrame.
  def := TDMethodDefinition
    className: frame inClass name
    isMeta: frame inClass isMeta
    selector: frame selector.
  defs := def versionsOf.
  defs
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        yourself).
  ^ true