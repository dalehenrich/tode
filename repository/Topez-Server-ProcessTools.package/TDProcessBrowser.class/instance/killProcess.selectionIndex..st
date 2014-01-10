actions
killProcess: listElement selectionIndex: selectionIndex
  | theProcess |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  theProcess := self _theProcessList at: selectionIndex.
  theProcess isValid
    ifTrue: [ self processTool psKill: theProcess ].
  ^ #'refreshList'