as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | classSelectorClientElement |
  index ifNil: [ ^ nil ].
  selectedProtocol := listElement itemCache at: index.
  classSelectorClientElement := self object
    editUsing:
      ((TDEditorSpec
        topez: listElement topez
        editorAspect: #'classicInstanceSelectors')
        windowName: #'classicSelectors';
        yourself).
  ^ nil