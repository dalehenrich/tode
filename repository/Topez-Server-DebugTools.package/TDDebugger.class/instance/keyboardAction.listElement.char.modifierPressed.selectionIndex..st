tools
keyboardAction: miniTool listElement: listElement char: char modifierPressed: modifierPressed selectionIndex: selectionIndex
  | selector |
  theMiniTool := miniTool.
  char == $b
    ifTrue: [ selector := #'browseClassDefinitionMenuAction:selectionIndex:' ].
  char == $B
    ifTrue: [ selector := #'browseFullClassMenuAction:selectionIndex:' ].
  char == $i
    ifTrue: [ selector := #'dbStepIntoMenuAction:selectionIndex:' ].
  char == $N
    ifTrue: [ selector := #'browseReferencesMenuAction:selectionIndex:' ].
  char == $o
    ifTrue: [ selector := #'dbStepOverMenuAction:selectionIndex:' ].
  char == $t
    ifTrue: [ selector := #'dbStepThruMenuAction:selectionIndex:' ].
  char == $k
    ifTrue: [ selector := #'dbUpMenuAction:selectionIndex:' ].
  char == $j
    ifTrue: [ selector := #'dbDownMenuAction:selectionIndex:' ].
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