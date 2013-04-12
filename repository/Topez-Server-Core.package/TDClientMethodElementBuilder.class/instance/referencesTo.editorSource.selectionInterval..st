as yet unclassified
referencesTo: clientSourceElement editorSource: editorSource selectionInterval: selectionInterval
  "CMD-N - references to"

  | meth aVariableOrClassName defs |
  aVariableOrClassName := editorSource
    copyFrom: selectionInterval _from
    to: selectionInterval _to.
  meth := self method.
  defs := TDMethodDefinition
    referencesTo: aVariableOrClassName
    isMeta: meth inClass isMeta
    in: meth inClass.
  defs
    editUsing:
      ((TDEditorSpec
        topez: clientSourceElement topez
        editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        yourself).
  ^ true