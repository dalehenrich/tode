as yet unclassified
clientList: listElement
  | list |
  list := self object clientEntryListColumnLabels.
  headerSize := list size.
  self object parentEntry ifNotNil: [ list add: '<<<' ].
  (self object parents asArray sort: [ :a :b | a total >= b total ])
    do: [ :entry | list add: entry printParentString ].
  list add: self object printSenderString.
  (self object children asArray sort: [ :a :b | a total >= b total ])
    do: [ :entry | list add: entry printChildString ].
  ^ list -> nil