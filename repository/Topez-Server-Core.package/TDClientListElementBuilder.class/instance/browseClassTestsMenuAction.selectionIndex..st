menu actions
browseClassTestsMenuAction: listElement selectionIndex: selectionIndex
  | cls testTool |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  testTool := listElement topez toolInstanceFor: 'test'.
  testTool testclass: {(cls name)}.
  ^ #'refreshView'