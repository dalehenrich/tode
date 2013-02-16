as yet unclassified
elementSource: methodSource clientSourceElement: clientSourceElement
  "compile to check for errors"

  | theFormattedSource |
  theFormattedSource := self formattedElementSource: methodSource.
  theFormattedSource
    _compileInContext: nil
    symbolList: GsSession currentSession symbolList
    oldLitVars: nil
    environmentId: 0.
  ^ super
    elementSource: theFormattedSource
    clientSourceElement: clientSourceElement