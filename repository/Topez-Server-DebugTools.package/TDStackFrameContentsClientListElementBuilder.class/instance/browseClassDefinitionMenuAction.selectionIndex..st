menu actions
browseClassDefinitionMenuAction: listElement selectionIndex: selectionIndex
  | aspect obj parentObj itemAttribute |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  itemAttribute := listElement itemCache at: selectionIndex.
  obj := itemAttribute object.
  {(TDClassDefinition className: obj class theNonMetaClass name)}
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'definitionList').
  ^ true