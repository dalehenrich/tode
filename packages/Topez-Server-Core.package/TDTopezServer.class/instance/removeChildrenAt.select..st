accessing
removeChildrenAt: commandPath select: selectBlock
    | node |
    node := self baseNodeFor: commandPath.
    (commandPath findTokens: '/')
        do: [ :pathElementName | node := node childNamed: pathElementName ifAbsent: [ ^ self ] ].
    node contents values
        do: [ :child | 
            (selectBlock value: child)
                ifTrue: [ node removeChildNode: child ] ]