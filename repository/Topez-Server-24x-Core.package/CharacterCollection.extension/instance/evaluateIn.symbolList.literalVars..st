*topez-server-24x-core
evaluateIn: aContext symbolList: symbolList literalVars: litVarArray
  ^ self
    _compileInContext: aContext
    symbolList: GsSession currentSession symbolList