exporting
createProjectEntryInNode: nodePath topez: topez
  | projectNode parentNode |
  projectNode := TDObjectGatewayLeafNode new
    name: self projectNodeName;
    contents: self printString;
    yourself.
  parentNode := topez ensureChildrenExistIn: nodePath.
  ^ parentNode addChildNode: projectNode