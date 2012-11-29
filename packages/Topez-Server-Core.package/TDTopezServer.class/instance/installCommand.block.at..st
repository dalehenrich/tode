accessing
installCommand: commandName block: commandBlock at: commandPath
    | node binNode commandNode |
    node := self installChildrenAt: commandPath.
    binNode := node childNamed: 'bin' ifAbsent: [ self createCommandBinNodeIn: node ].
    commandNode := TDBinLeafNode new
        name: commandName;
        block: commandBlock;
        yourself.
    binNode addBlock value: binNode value: commandNode.
    ^ commandNode