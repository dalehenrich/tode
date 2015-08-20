tools
itemSelected: listElement at: index shiftPressed: shiftPressed
  | classSelectorClientElement protocolDefinition |
  index ifNil: [ ^ nil ].
  protocolDefinition := listElement itemCache at: index.
  classSelectorClientElement := protocolDefinition
    editUsing:
      ((TDEditorSpec
        topez: listElement topez
        editorAspect: #'classicInstanceSelectors')
        windowName: #'classicSelectors';
        yourself).
  ^ listElement objectSerializer
    toString: (self enableDisableMenuItems: protocolDefinition)