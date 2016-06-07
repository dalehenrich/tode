*Topez-Common-Pharo-Core
itemSelected: index listSelections: listSelectionsDictionary
  | stonStringOrNil |
  index = 0
    ifTrue: [ ^ self ].
  stonStringOrNil := listSelectionsDictionary
    ifNotNil: [ stonStringOrNil := self objectSerializer toString: listSelectionsDictionary ].
  ^ self topez
    itemSelectedForClientListElement: self
    index: index
    listSelections: stonStringOrNil