as yet unclassified
clientArray
  | list |
  list := Array new.
  (self object parents asArray sort: [ :a :b | a total >= b total ])
    do: [ :entry | list add: entry ].
  list add: self object.
  (self object children asArray sort: [ :a :b | a total >= b total ])
    do: [ :entry | list add: entry ].
  ^ list