tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | fullHistorySelector fileHistorySelector |
  (super
    itemSelected: miniTool
    listElement: listElement
    selectedIndex: index
    shiftPressed: shiftPressed)
    ifFalse: [ ^ false ].
  fullHistorySelector := fileHistorySelector := #'setMenuCategory:'.
  commitish1
    ifNil: [ 
      fullHistorySelector := #'clearMenuCategory:'.
      commitish2 ifNil: [ fileHistorySelector := #'clearMenuCategory:' ] ].
  ^ STON
    toString:
      {fileHistorySelector.
      #'fileHistory'.
      fullHistorySelector.
      #'fullHistory'}