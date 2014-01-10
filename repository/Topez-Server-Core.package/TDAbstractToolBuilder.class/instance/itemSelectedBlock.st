accessing
itemSelectedBlock
  ^ [ :miniTool :listElement :index :shiftPressed | 
  self
    itemSelected: miniTool
    listElement: listElement
    selectedIndex: index
    shiftPressed: shiftPressed ]