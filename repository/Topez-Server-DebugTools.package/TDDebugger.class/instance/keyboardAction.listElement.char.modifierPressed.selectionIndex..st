tools
keyboardAction: miniTool listElement: listElement char: char modifierPressed: modifierPressed selectionIndex: selectionIndex
  theMiniTool := miniTool.
  char == $i
    ifTrue: [ ^ self dbStepIntoMenuAction: listElement selectionIndex: selectionIndex ].
  char == $o
    ifTrue: [ ^ self dbStepOverMenuAction: listElement selectionIndex: selectionIndex ].
  char == $t
    ifTrue: [ ^ self dbStepThruMenuAction: listElement selectionIndex: selectionIndex ].
  char == $k
    ifTrue: [ ^ self dbUpMenuAction: listElement selectionIndex: selectionIndex ].
  char == $j
    ifTrue: [ ^ self dbDownMenuAction: listElement selectionIndex: selectionIndex ].
  ^ super
    keyboardAction: miniTool
    listElement: listElement
    char: char
    modifierPressed: modifierPressed
    selectionIndex: selectionIndex