tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed listSelectionsDictionary: listSelectionsDictionary
  | operation |
  theMiniTool := miniTool.
  selectedOperations := Set new.
  listSelectionsDictionary
    ifNotNil: [ 
      listSelectionsDictionary
        keysAndValuesDo: [ :selectionIndex :selectionBoolean | 
          selectionBoolean
            ifTrue: [ selectedOperations add: (self operations at: selectionIndex) ] ] ].
  index == 0
    ifTrue: [ ^ false ].
  operation := self operations at: index.
  selectedOperations add: operation.
  self editOperation: operation listElement: listElement.
  ^ self enableDisableMenuItems: operation