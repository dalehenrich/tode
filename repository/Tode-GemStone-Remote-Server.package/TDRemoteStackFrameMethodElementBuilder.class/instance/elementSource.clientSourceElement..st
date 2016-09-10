as yet unclassified
elementSource: methodSource clientSourceElement: clientSourceElement
  | newSelector theFormattedSource |
  self inClassOop == nil
    ifTrue: [ 
      self inform: 'Cannot edit Executable Code'.
      ^ false ].
  theFormattedSource := self formattedElementSource: methodSource.
  newSelector := self compileSource: theFormattedSource.
  self selector asSymbol == newSelector
    ifTrue: [ self object trimToHomeFrame ].
  ^ true