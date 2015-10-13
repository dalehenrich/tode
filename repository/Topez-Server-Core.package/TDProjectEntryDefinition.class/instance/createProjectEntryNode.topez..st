actions
createProjectEntryNode: nodePath topez: topez
  | projectNode parentNode |
  projectNode := TDObjectGatewayNode new
    name: self projectName;
    contents: self printString;
    yourself.
  parentNode := topez ensureChildrenExistIn: nodePath.
  ^ parentNode addChildLeafNode: projectNode