menu actions
browseClassDefinitionMenuAction: listElement selectionIndex: selectionIndex
  {(TDClassDefinition
    className: self object dotSelfObject class theNonMetaClass name)}
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'definitionList').
  ^ true