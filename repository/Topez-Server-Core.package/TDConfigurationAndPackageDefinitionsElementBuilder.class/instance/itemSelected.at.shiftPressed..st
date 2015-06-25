as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  "nothing else occurs"

  | itemAttribute def |
  self object selectedIndex: index.
  index = 0
    ifTrue: [ ^ nil ].
  itemAttribute := listElement itemCache at: index.
  def := itemAttribute object.
  self editClassDefinitions: def listElement: listElement.
  ^ STON toUTF8EncodedString: (self enableDisableMenuItems: def)