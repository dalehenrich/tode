method
methodmove: methodDef to: theBehavior
  theBehavior compileMethod: methodDef source category: methodDef methodProtocol.
  self methodremove: methodDef