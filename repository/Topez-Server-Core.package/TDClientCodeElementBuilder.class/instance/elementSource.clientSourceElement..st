as yet unclassified
elementSource: methodSource clientSourceElement: clientSourceElement
  "compile to check for errors"

  | theFormattedSource symbolList |
  symbolList := (clientSourceElement topez
    applicationEnvironmentFor:
      clientSourceElement theObject sourceCompilationContext)
    methodCompilationSymbolList.
  theFormattedSource := self formattedElementSource: methodSource.
  theFormattedSource
    _compileInContext: clientSourceElement theObject sourceCompilationContext
    symbolList: symbolList.
  ^ super
    elementSource: theFormattedSource
    clientSourceElement: clientSourceElement