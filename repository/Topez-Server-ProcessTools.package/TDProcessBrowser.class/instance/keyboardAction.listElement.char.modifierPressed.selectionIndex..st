tools
keyboardAction: miniTool listElement: listElement char: char modifierPressed: modifierPressed selectionIndex: selectionIndex
  | selector |
  theMiniTool := miniTool.
  char == $a
    ifTrue: [ selector := #'attachProcess:selectionIndex:' ].
  char == $d
    ifTrue: [ selector := #'debugProcess:selectionIndex:' ].
  char == $k
    ifTrue: [ selector := #'killProcess:selectionIndex:' ].
  char == $t
    ifTrue: [ selector := #'terminateProcess:selectionIndex:' ].
  char == $y
    ifTrue: [ selector := #'yield:selectionIndex:' ].
  selector
    ifNotNil: [ 
      ^ self
        performMenuOrKeyBoardAction: selector
        listElement: listElement
        selectionIndex: selectionIndex ].
  ^ super
    keyboardAction: miniTool
    listElement: listElement
    char: char
    modifierPressed: modifierPressed
    selectionIndex: selectionIndex