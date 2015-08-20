menu actions
browseClassDefinitionMenuAction: listElement selectionIndex: selectionIndex
  {(self object asTDClassDefinition)}
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'definitionList').
  ^ true