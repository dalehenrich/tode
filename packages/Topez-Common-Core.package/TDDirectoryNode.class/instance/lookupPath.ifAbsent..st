as yet unclassified
lookupPath: path ifAbsent: absentBlock
    | node |
    node := self.
    path
        do: [ :elementName | 
            node := node childNamed: elementName ifAbsent: [ ^ absentBlock value ].
            node topez: self topez ].
    ^ node