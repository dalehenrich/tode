accessing
removeChildrenAt: commandPath
    | node |
    node := self baseNodeFor: commandPath.
    (commandPath findTokens: '/')
        do: [ :pathElementName | node := node childNamed: pathElementName ifAbsent: [ ^ self ] ].
    node contents values do: [ :child | node removeChildNode: child ]