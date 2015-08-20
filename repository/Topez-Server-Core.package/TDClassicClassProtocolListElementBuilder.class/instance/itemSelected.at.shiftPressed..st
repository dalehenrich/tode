tools
itemSelected: listElement at: index shiftPressed: shiftPressed
  | classSelectorClientElement protocolDefinition selected |
  index ifNil: [ ^ nil ].
  selected := listElement itemCache at: index.
  protocolDefinition := TDBehaviorProtocolDefinition
    className: self object className
    isMeta: self object isMeta
    protocol: selected.
  classSelectorClientElement := protocolDefinition
    editUsing:
      ((TDEditorSpec
        topez: listElement topez
        editorAspect: #'classicInstanceSelectors')
        windowName: #'classicSelectors';
        yourself).
  ^ nil