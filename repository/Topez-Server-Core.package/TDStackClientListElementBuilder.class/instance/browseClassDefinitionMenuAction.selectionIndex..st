menu actions
browseClassDefinitionMenuAction: listElement selectionIndex: selectionIndex
  | method |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  self object navigateFrame: selectionIndex.
  method := self object currentFrame method.
  method inClass ifNil: [ ^ false ].
  {(TDClassDefinition className: method inClass theNonMetaClass name)}
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'definitionList').
  ^ true