actions
browseClassDefinitionMenuAction: listElement selectionIndex: selectionIndex
  | aspect parentObj cls |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  cls := self theBehavior.
  {(cls asTDClassDefinition)}
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'definitionList').
  ^ true