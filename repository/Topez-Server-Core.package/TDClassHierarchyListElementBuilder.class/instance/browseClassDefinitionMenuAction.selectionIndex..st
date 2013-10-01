menu actions
browseClassDefinitionMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute className def |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  itemAttribute := listElement itemCache at: selectionIndex.
  className := itemAttribute object.
  def := TDClassDefinition className: className.
  {def}
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'definitionList').
  ^ true