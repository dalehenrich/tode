actions
createProjectEntryNode: nodePath topez: topez
  | projectNode parentNode |
  projectNode := TDObjectGatewayNode new
    name: 'project';
    contents: self printString;
    yourself.
  parentNode := topez ensureChildrenExistIn: '/home/${projectDirectoryName}'.
  ^ parentNode addChildLeafNode: projectNode