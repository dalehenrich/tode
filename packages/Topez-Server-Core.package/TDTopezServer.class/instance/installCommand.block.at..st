accessing
installCommand: commandName block: commandBlock at: commandPath
    | node |
    self commands at: commandName put: commandBlock.
    node := self baseNodeFor: commandPath.
    (commandPath findTokens: '/') do: [ :pathElementName | node := node childNamed: pathElementName addIfAbsent: true ].
    ^ node
        addChildNode:
            (TZBinLeafNode new
                name: commandName;
                contents: commandBlock;
                yourself)