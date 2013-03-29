as yet unclassified
findMatchingPathFor: aPath with: aTopez
  | node elementName matches path |
  self topez: aTopez.
  path := aPath findTokens: '/'.
  node := self path size > 1
    ifTrue: [ 
      node := self
        lookupPath: (path copyFrom: 1 to: path size - 1)
        ifAbsent: [ ^ aPath ] ].
  elementName := path last.
  matches := Array new.
  node
    childrenDo: [ :child | 
      (child name beginsWith: elementName)
        ifTrue: [ matches add: child ] ].
  matches size ~~ 1
    ifTrue: [ ^ aPath ].
  ^ matches first printName