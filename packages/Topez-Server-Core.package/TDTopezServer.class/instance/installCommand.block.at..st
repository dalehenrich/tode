accessing
installCommand: commandName block: commandBlock at: commandPath
    | node |
    self commands at: commandName put: commandBlock.
    node := self installChildrenAt: commandPath.
    ^ node
        addChildNode:
            (TZBinLeafNode new
                name: commandName;
                contents: commandBlock;
                yourself)