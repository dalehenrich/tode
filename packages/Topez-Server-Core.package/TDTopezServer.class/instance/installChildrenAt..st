accessing
installChildrenAt: commandPath
    | node |
    node := self baseNodeFor: commandPath.
    node topez: self.
    (commandPath findTokens: '/') do: [ :pathElementName | node := node childNamed: pathElementName addIfAbsent: true ].
    ^ node