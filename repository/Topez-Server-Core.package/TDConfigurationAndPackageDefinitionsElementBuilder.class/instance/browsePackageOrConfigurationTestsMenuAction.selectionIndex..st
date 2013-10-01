menu actions
browsePackageOrConfigurationTestsMenuAction: listElement selectionIndex: selectionIndex
  | definition defs |
  definition := self object selectedDefinition.
  definition ifNil: [ ^ true ].
  defs := definition classDefinitions.
  defs := defs select: [ :def | def theClass inheritsFrom: TestAsserter ].
  defs
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'definitionList').
  ^ true