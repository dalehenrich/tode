accessing
installCommand: commandName block: commandBlock at: commandPath
    | node binNode |
    self commands at: commandName put: commandBlock.
    node := self installChildrenAt: commandPath.
    binNode := node childNamed: 'bin' ifAbsent: [ self createCommandBinNodeIn: node ].
    ^ binNode
        addChildNode:
            (TZBinLeafNode new
                name: commandName;
                contents: commandBlock _sourceString;
                yourself)