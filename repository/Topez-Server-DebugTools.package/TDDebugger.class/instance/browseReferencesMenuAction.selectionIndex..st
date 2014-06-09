actions
browseReferencesMenuAction: listElement selectionIndex: selectionIndex
  | beh aVariableOrClassName block |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  beh := self theBehavior.
  aVariableOrClassName := beh theNonMetaClass name asString.
  block := [ TDMethodDefinition referencesTo: aVariableOrClassName isMeta: beh isMeta in: nil ].
  block value
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        objectBlock: block;
        yourself).
  ^ true