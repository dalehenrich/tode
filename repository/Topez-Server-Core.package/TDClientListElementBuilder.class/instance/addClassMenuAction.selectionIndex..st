menu actions
addClassMenuAction: listElement selectionIndex: selectionIndex
  | cls newClass superClassName clsTool |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  superClassName := cls superclass
    ifNotNil: [ :superclass | superclass name ]
    ifNil: [ 'Object' ].
  clsTool := self clsTool: listElement.
  newClass := clsTool
    clsInteractiveCreateSubclassOf: superClassName
    category: cls category.
  newClass ifNil: [ ^ false ].
  ^ #'refreshView'