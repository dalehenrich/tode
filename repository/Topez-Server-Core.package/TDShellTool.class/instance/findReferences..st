find
findReferences: variableOrGlobalNameOrPathRef
  "find [--scriptPath=<tode-path>] references <variableOrGlobalNameOrPathRef>"

  | path |
  self options at: 'scriptPath' ifPresent: [ :scriptPath | path := scriptPath ].
  ^ self
    findReferences: variableOrGlobalNameOrPathRef
    inClass: nil
    searchScriptRoot: path