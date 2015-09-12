menu actions
browseClassDefinitionMenuAction: listElement selectionIndex: selectionIndex
  {(self object dotSelfObject class asTDClassDefinition)}
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'definitionList').
  ^ true