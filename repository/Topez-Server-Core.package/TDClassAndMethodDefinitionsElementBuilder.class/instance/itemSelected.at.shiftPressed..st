as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  "browse the definition"

  | itemAttribute def |
  index ifNil: [ ^ nil ].
  itemAttribute := listElement itemCache at: index.
  def := itemAttribute object.
  ^ def itemSelected: listElement topez