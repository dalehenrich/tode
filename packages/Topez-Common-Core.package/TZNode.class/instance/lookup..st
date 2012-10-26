as yet unclassified
lookup: aPath
    | node path |
    node := self.
    path := aPath findTokens: '/'.
    path
        do: [ :elementName | node := node childNamed: elementName ifAbsent: [ ^ self error: 'No such node: ' , aPath printString ] ].
    ^ node