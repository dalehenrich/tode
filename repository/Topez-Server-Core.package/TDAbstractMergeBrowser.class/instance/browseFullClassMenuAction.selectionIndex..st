menu actions
browseFullClassMenuAction: listElement selectionIndex: selectionIndex
  | cls operation |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  operation := self operations at: selectionIndex.
  cls := operation methodClass.
  cls ifNil: [ ^ false ].
  (listElement topez toolInstanceFor: 'browse')
    browseClassHierarchy: cls
    label: 'Hierarchy of ' , cls name asString.
  ^ true