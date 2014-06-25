as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | def itemAttribute |
  index == nil
    ifTrue: [ ^ nil ].
  itemAttribute := listElement itemCache at: index.
  def := itemAttribute object.
  def itemSelected: listElement topez.
  ^ STON toString: (self enableDisableMenuItems: def)