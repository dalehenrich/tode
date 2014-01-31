as yet unclassified
browseReferences: variableOrGlobalNameOrPathRef searchScriptRoot: path
  "browse [--scriptPath=<tode-path>] references <variableOrGlobalNameOrPathRef>"

  | pattern |
  (variableOrGlobalNameOrPathRef beginsWith: '@')
    ifFalse: [ pattern := variableOrGlobalNameOrPathRef ].
  ^ (TDLeafNodeBrowser new
    topez: topez;
    messagePattern: pattern;
    windowLabel:
        'References to ' , variableOrGlobalNameOrPathRef printString , ' for' , path;
    leafNodesBlock: [ self findReferences: variableOrGlobalNameOrPathRef searchScriptRoot: path ];
    yourself) open