accessing
itemSelectedBlock
  ^ [ :miniTool :listElement :index :shiftPressed :listSelectionsDictionary | 
  self
    itemSelected: miniTool
    listElement: listElement
    selectedIndex: index
    shiftPressed: shiftPressed
    listSelectionsDictionary: listSelectionsDictionary ]