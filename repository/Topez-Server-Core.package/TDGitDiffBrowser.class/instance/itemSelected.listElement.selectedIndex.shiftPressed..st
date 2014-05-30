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
  source
    ifNil: [ 
      fullHistorySelector := #'clearMenuCategory:'.
      destination ifNil: [ fileHistorySelector := #'clearMenuCategory:' ] ].
  ^ STON
    toString:
      {fileHistorySelector.
      #'fileHistory'.
      fullHistorySelector.
      #'fullHistory'}