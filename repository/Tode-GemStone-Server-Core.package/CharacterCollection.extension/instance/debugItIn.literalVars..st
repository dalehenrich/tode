*tode-gemstone-server-core
debugItIn: aContext literalVars: litVarArray
  " If litVarArray is not nil, it must be an Array of Symbol,SymbolAssociation pairs
 and this Array will be searched prior to searching aSymbolList to
 resolve literal variables within the method.
"

  | meth |
  meth := self
    _compileInContext: aContext
    symbolList: GsSession currentSession symbolList
    oldLitVars: litVarArray
    environmentId: 0.
  meth setBreakAtStepPoint: 1.
  meth _executeInContext: aContext