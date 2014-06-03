as yet unclassified
referencesTo: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval
  "CMD-N - references to"

  | meth aVariableOrClassName block |
  aVariableOrClassName := editorSource
    copyFrom: selectionInterval _from
    to: selectionInterval _to.
  meth := self method.
  block := [ 
  TDMethodDefinition
    referencesTo: aVariableOrClassName
    isMeta: meth inClass isMeta
    in: meth inClass ].
  block value
    editUsing:
      ((TDEditorSpec
        topez: clientSourceElement topez
        editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        objectBlock: block;
        yourself).
  ^ true