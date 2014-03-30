actions
browseFullClassMenuAction: listElement selectionIndex: selectionIndex
  | cls |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  cls := self theBehavior.
  (listElement topez toolInstanceFor: 'browse')
    browseClassHierarchy: cls
    label: 'Hierarchy of ' , cls name asString.
  ^ true