menu actions
browseClassDefinitionMenuAction: listElement selectionIndex: selectionIndex
  | cls |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  {(cls asTDClassDefinition)}
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'definitionList').
  ^ true