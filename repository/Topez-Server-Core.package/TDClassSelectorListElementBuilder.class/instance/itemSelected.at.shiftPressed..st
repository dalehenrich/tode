as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | def itemAttribute |
  itemAttribute := listElement itemCache at: index.
  def := itemAttribute object.
  ^ def itemSelected: listElement topez