accessing
itemSelected: index listSelections: listSelectionsDictionary
  | stonStringOrNil |
  index = 0
    ifTrue: [ ^ self ].
  stonStringOrNil := listSelectionsDictionary
    ifNotNil: [ stonStringOrNil := STON toUTF8EncodedString: listSelectionsDictionary ].
  ^ self topez
    itemSelectedForClientListElement: self
    index: index
    listSelections: stonStringOrNil