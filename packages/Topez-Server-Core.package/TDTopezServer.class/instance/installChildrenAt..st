accessing
installChildrenAt: commandPath
    | node |
    node := self baseNodeFor: commandPath.
    (commandPath findTokens: '/') do: [ :pathElementName | node := node childNamed: pathElementName addIfAbsent: true ].
    ^ node