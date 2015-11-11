exporting
createProjectEntryInNode: nodePath topez: topez
  | projectNode parentNode node |
  projectNode := TDObjectGatewayLeafNode new
    name: self projectNodeName;
    contents: self printString;
    yourself.
  parentNode := topez ensureChildrenExistIn: nodePath.
  node := parentNode addChildNode: projectNode.
  node topez: topez.
  ^ node