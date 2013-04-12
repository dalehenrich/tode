as yet unclassified
cmdShiftTAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-T - browse pkg/confis tests"

  | definition defs |
  definition := self object selectedDefinition.
  definition ifNil: [ ^ true ].
  defs := definition classDefinitions.
  defs := defs select: [ :def | def theClass inheritsFrom: TestAsserter ].
  defs
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'definitionList').
  ^ true