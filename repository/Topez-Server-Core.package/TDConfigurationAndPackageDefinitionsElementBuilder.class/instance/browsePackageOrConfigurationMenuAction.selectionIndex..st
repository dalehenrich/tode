menu actions
browsePackageOrConfigurationMenuAction: listElement selectionIndex: selectionIndex
  | definition defs |
  definition := self object selectedDefinition.
  definition ifNil: [ ^ true ].
  defs := definition classDefinitions.
  defs
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'definitionList').
  ^ true