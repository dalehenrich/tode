accessing
installCommand: commandName block: commandBlock at: commandPath
  | node binNode commandNode |
  node := self ensureChildrenExistIn: commandPath.
  binNode := node
    childNamed: 'bin'
    ifAbsent: [ self createCommandBinNodeIn: node ].
  commandNode := TDScriptLeafNode new
    name: commandName;
    block: commandBlock;
    yourself.
  binNode addBlock value: binNode value: commandNode.
  ^ commandNode