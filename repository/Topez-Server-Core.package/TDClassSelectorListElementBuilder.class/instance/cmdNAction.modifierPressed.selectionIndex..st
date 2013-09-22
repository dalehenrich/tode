as yet unclassified
cmdNAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-n - browse senders"

  | itemAttribute classAttributes def defs |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  defs := TDMethodDefinition sendersOf: def selector.
  defs
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        yourself).
  ^ true