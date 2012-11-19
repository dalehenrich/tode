accessing
installCommand: comandName block: commandBlock at: commandPath
    | node |
    node := self baseNodeFor: commandPath.
    (commandPath findTokens: '/') do: [ :pathElementName | node := node childNamed: pathElementName addIfAbsent: true ].
    ^ node
        addChildNode:
            (TZBinLeafNode new
                name: comandName;
                contents: commandBlock;
                yourself)