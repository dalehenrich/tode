as yet unclassified
elementSource: methodSource clientSourceElement: clientSourceElement
  "compile to check for errors"

  | theFormattedSource |
  theFormattedSource := self formattedElementSource: methodSource.
  clientSourceElement topaz
    evaluateString: theFormattedSource
    inContext: clientSourceElement theObject sourceCompilationContext.
  ^ super
    elementSource: theFormattedSource
    clientSourceElement: clientSourceElement