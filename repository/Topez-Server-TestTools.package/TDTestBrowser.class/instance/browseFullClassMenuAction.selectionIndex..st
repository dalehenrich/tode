menu actions
browseFullClassMenuAction: listElement selectionIndex: selectionIndex
  | cls testCase |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  testCase := (resultArray at: resultSlot) at: selectionIndex - 2.
  cls := testCase class.
  cls ifNil: [ ^ false ].
  (listElement topez toolInstanceFor: 'browse')
    browseClassHierarchy: cls
    label: 'Hierarchy of ' , cls name asString.
  ^ true