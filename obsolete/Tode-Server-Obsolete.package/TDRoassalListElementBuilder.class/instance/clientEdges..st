as yet unclassified
clientEdges: listElement
  | dict |
  dict := Dictionary new.
  (listElement theObject at: 2) do: [ :assoc | dict add: assoc ].
  ^ dict