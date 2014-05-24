tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | oneline sha offset newOperation methodSource |
  theMiniTool := miniTool.
  index = 0
    ifTrue: [ ^ false ].
  newOperation := self history at: index.
  self
    displayObject: newOperation
    listElement: listElement
    label: newOperation windowLabel.
  ^ true