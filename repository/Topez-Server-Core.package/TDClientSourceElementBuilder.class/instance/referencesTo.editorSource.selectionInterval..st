menu actions - keyboard only
referencesTo: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval
  "CMD-N - references to"

  | aVariableOrClassName defs |
  aVariableOrClassName := editorSource
    copyFrom: selectionInterval _from
    to: selectionInterval _to.
  defs := TDMethodDefinition
    referencesTo: aVariableOrClassName
    isMeta: false
    in: self theClass.
  defs
    editUsing:
      ((TDEditorSpec
        topez: clientSourceElement topez
        editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        yourself).
  ^ true