validation
lookup: path in: aNode ifAbsent: absentBlock
  | pathList |
  pathList := path findTokens: '/'.
  ^ aNode lookupPath: pathList ifAbsent: absentBlock