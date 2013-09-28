as yet unclassified
clientArray
  | list |
  list := Array new.
  self object parents do: [ :entry | list add: entry ].
  list add: self object.
  self object children do: [ :entry | list add: entry ].
  ^ list