as yet unclassified
clientList: listElement
  | items labels |
  items := OrderedCollection new.
  labels := self object operations
    collect: [ :operation | 
      items add: operation.
      operation printText ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ labels -> nil