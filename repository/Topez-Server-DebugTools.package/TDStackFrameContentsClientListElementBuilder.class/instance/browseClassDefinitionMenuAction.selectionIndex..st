menu actions
browseClassDefinitionMenuAction: listElement selectionIndex: selectionIndex
  {(TDClassDefinition className: self theClass name)}
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'definitionList').
  ^ true