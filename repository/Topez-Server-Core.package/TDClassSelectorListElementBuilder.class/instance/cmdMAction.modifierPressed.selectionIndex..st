as yet unclassified
cmdMAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-m - browse implementors"

  | itemAttribute classAttributes def defs |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  defs := TDMethodDefinition implementorsOf: def selector.
  defs
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        yourself).
  ^ true