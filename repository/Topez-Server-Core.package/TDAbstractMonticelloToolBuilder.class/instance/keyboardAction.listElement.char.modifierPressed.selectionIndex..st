tools
keyboardAction: miniTool listElement: listElement char: char modifierPressed: modifierPressed selectionIndex: selectionIndex
  theMiniTool := miniTool.
  char == $c
    ifTrue: [ ^ self copyObjectMenuAction: listElement selectionIndex: selectionIndex ].
  char == $C
    ifTrue: [ ^ self builder cloneWindowMenuAction: listElement selectionIndex: selectionIndex ].
  char == $l
    ifTrue: [ ^ self builder refreshListMenuAction: listElement selectionIndex: selectionIndex ].
  char == $L
    ifTrue: [ ^ self builder listWindowsMenuAction: listElement selectionIndex: selectionIndex ].
  char == $p
    ifTrue: [ ^ self printObjectMenuAction: listElement selectionIndex: selectionIndex ].
  char == $v
    ifTrue: [ ^ self pasteObjectMenuAction: listElement selectionIndex: selectionIndex ].
  char == $x
    ifTrue: [ ^ self cutObjectMenuAction: listElement selectionIndex: selectionIndex ].
  ^ false