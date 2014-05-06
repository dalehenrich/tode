*topez-server-24x-core
evaluateIn: aContext literalVars: litVarArray
  ^ self
    evaluateIn: aContext
    symbolList: GsSession currentSession symbolList
    literalVars: litVarArray