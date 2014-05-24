*topez-server-24x-core
debugItIn: aContext literalVars: litVarArray
  | meth |
  meth := self
    _compileInContext: aContext
    symbolList: GsSession currentSession symbolList.
  meth setBreakAtStepPoint: 1.
  meth _executeInContext: aContext