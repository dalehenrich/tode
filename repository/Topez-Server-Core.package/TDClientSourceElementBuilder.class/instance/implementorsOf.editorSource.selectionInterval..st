as yet unclassified
implementorsOf: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval
  "CMD-m - implementorsOf"

  | selector defs |
  selector := (editorSource
    copyFrom: selectionInterval _from
    to: selectionInterval _to) findSelector.
  defs := TDMethodDefinition implementorsOf: selector.
  defs
    editUsing:
      ((TDEditorSpec
        topez: clientSourceElement topez
        editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        yourself).
  ^ true