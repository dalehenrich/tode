menu actions
browseClassDefinitionMenuAction: listElement selectionIndex: selectionIndex
  {(self theClass asTDClassDefinition)}
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'definitionList').
  ^ true