as yet unclassified
lookupPath: path ifAbsent: absentBlock
    | node |
    node := self.
    path
        do: [ :elementName | 
            node := node childNamed: elementName ifAbsent: absentBlock.
            node topez: self topez ].
    ^ node