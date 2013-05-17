as yet unclassified
elementSource: methodSource clientSourceElement: clientSourceElement
  "compile to check for errors"

  | theFormattedSource |
  theFormattedSource := self formattedElementSource: methodSource.
  theFormattedSource
    _compileInContext: clientSourceElement theObject sourceCompilationContext
    symbolList: GsSession currentSession symbolList.
  ^ super
    elementSource: theFormattedSource
    clientSourceElement: clientSourceElement