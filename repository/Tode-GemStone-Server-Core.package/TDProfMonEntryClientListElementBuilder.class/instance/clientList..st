as yet unclassified
clientList: listElement
  | list |
  list := Array new.
  self object parentEntry ifNotNil: [ list add: '                   ..' ].
  self object parents do: [ :entry | list add: entry printParentString ].
  list add: self object printSenderString.
  self object children do: [ :entry | list add: entry printChildString ].
  ^ list