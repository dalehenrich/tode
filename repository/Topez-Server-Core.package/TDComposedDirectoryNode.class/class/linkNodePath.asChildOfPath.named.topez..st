instance creation
linkNodePath: childPath asChildOfPath: parentPath named: nodeName topez: topez
  | childNode parentNode |
  childNode := topez lookup: childPath.
  parentNode := topez lookup: parentPath.
  self link: childNode asChildOf: parentNode named: nodeName