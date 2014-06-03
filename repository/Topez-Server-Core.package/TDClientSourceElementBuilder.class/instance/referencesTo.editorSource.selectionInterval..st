menu actions - keyboard only
referencesTo: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval
  "CMD-N - references to"

  | aVariableOrClassName block |
  aVariableOrClassName := editorSource
    copyFrom: selectionInterval _from
    to: selectionInterval _to.
  block := [ 
  TDMethodDefinition
    referencesTo: aVariableOrClassName
    isMeta: false
    in: self theClass ].
  block value
    editUsing:
      ((TDEditorSpec
        topez: clientSourceElement topez
        editorAspect: #'methodDefinitionList')
        objectBlock: block;
        windowLocation: #'implementors';
        yourself).
  ^ true