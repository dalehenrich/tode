as yet unclassified
clientList: listElement
  | list |
  list := self object clientEntryListColumnLabels.
  headerSize := list size.
  self object parentEntry ifNotNil: [ list add: '<<<' ].
  clientList := {}.
  (self object parents asArray sort: [ :a :b | a total >= b total ])
    do: [ :entry | 
      clientList add: entry.
      list add: entry printParentString ].
  clientList add: self object.
  list add: self object printSenderString.
  (self object children asArray sort: [ :a :b | a total >= b total ])
    do: [ :entry | 
      clientList add: entry.
      list add: entry printChildString ].
  ^ list -> nil