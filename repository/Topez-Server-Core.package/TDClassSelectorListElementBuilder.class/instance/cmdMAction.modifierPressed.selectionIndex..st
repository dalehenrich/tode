as yet unclassified
cmdMAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-m - browse implementors"

  | itemAttribute classAttributes selector defs |
  itemAttribute := listElement itemCache at: selectionIndex.
  classAttributes := itemAttribute object.
  selector := classAttributes at: 3.
  defs := TDMethodDefinition implementorsOf: selector.
  defs
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        yourself).
  ^ true