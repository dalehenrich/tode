tools
keyboardAction: miniTool listElement: listElement char: char modifierPressed: modifierPressed selectionIndex: selectionIndex
  | selector |
  char == $c
    ifTrue: [ selector := #'copyObjectMenuAction:selectionIndex:' ].
  char == $C
    ifTrue: [ selector := #'cloneWindowMenuAction:selectionIndex:' ].
  char == $l
    ifTrue: [ selector := #'refreshListMenuAction:selectionIndex:' ].
  char == $L
    ifTrue: [ selector := #'listWindowsMenuAction:selectionIndex:' ].
  char == $p
    ifTrue: [ selector := #'printObjectMenuAction:selectionIndex:' ].
  char == $P
    ifTrue: [ selector := #'printClientListMenuAction:selectionIndex:' ].
  char == $v
    ifTrue: [ selector := #'pasteObjectMenuAction:selectionIndex:' ].
  char == $x
    ifTrue: [ selector := #'cutObjectMenuAction:selectionIndex:' ].
  selector
    ifNotNil: [ 
      ^ self
        performMenuOrKeyBoardAction: selector
        listElement: listElement
        selectionIndex: selectionIndex ].
  ^ false