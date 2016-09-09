as yet unclassified
elementSource: methodSource clientSourceElement: clientSourceElement
  | theFormattedSource |
  theFormattedSource := self formattedElementSource: methodSource.
  self compileSource: theFormattedSource.
  ^ true