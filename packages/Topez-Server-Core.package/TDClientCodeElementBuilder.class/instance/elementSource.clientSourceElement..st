as yet unclassified
elementSource: methodSource clientSourceElement: clientSourceElement
  "compile to check for errors"

  methodSource
    _compileInContext: nil
    symbolList: GsSession currentSession symbolList
    oldLitVars: nil
    environmentId: 0.
  ^ super elementSource: methodSource clientSourceElement: clientSourceElement