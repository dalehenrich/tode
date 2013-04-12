as yet unclassified
cmdNAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-n - browse senders"

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