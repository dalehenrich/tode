tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | operation selector fullHistorySelector fileHistorySelector |
  (super
    itemSelected: miniTool
    listElement: listElement
    selectedIndex: index
    shiftPressed: shiftPressed) == false
    ifTrue: [ ^ false ].
  fullHistorySelector := fileHistorySelector := #'setMenuCategory:'.
  commitish1
    ifNil: [ 
      fullHistorySelector := #'clearMenuCategory:'.
      commitish2 ifNil: [ fileHistorySelector := #'clearMenuCategory:' ] ].
  operation := self operations at: index.
  selector := #'clearMenuCategory:'.
  operation hasFileTreeSmalltalkSource
    ifTrue: [ selector := #'setMenuCategory:' ].
  ^ STON
    toString:
      {fileHistorySelector.
      #'fileHistory'.
      fullHistorySelector.
      #'fullHistory'.
      selector.
      #'stMenuItem'}