actions
browseReferencesMenuAction: listElement selectionIndex: selectionIndex
  | cls aVariableOrClassName defs |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  cls := self theBehavior.
  aVariableOrClassName := cls name asString.
  defs := TDMethodDefinition
    referencesTo: aVariableOrClassName
    isMeta: false isMeta
    in: nil.
  defs
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        yourself).
  ^ true