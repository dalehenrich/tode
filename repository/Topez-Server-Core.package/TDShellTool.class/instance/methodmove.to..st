method
methodmove: methodDef to: theBehavior
  theBehavior compileMethod: methodDef source category: methodDef methodProtocol.
  methodDef theBehavior removeSelector: methodDef selector