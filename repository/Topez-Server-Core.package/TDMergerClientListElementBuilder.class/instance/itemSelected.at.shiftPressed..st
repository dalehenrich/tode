as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | operation |
  operation := listElement itemCache at: index.
  self refreshOperation: operation listElement: listElement.
  ^ nil