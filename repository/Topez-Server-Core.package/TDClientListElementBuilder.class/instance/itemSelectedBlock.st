accessing
itemSelectedBlock
  ^ [ :listElement :index :shiftPressed :listSelectionsDictionary | 
  listSelectionsDictionary isNil
    ifTrue: [ self itemSelected: listElement at: index shiftPressed: shiftPressed ]
    ifFalse: [ 
      self
        itemSelected: listElement
        at: index
        shiftPressed: shiftPressed
        listSelectionsDictionary: (STON fromString: listSelectionsDictionary) ] ]