menu actions
browseMethodVersionsMenuAction: listElement selectionIndex: selectionIndex
  | stack frame block inClass selector |
  stack := self theStack.
  stack navigateFrame: selectionIndex.
  frame := stack currentFrame.
  inClass := frame inClass.
  selector := frame selector.
  block := [ 
  | def defs |
  def := TDMethodDefinition
    className: inClass name
    isMeta: inClass isMeta
    selector: selector.
  defs := def versionsOf ].
  block value
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        objectBlock: block;
        yourself).
  ^ true