*topez-server-3x-core
evaluateIn: aContext symbolList: symbolList literalVars: litVarArray
  " If litVarArray is not nil, it must be an Array of Symbol,SymbolAssociation pairs
 and this Array will be searched prior to searching aSymbolList to
 resolve literal variables within the method.
"

  | meth |
  meth := self
    _compileInContext: aContext
    symbolList: symbolList
    oldLitVars: litVarArray
    environmentId: 0.
  ^ meth _executeInContext: aContext