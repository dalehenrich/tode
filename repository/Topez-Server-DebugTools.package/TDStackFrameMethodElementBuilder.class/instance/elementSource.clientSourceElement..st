as yet unclassified
elementSource: methodSource clientSourceElement: clientSourceElement
  | newSelector |
  self inClass == nil
    ifTrue: [ self error: 'Cannot edit Executable Code' ].
  newSelector := super
    elementSource: methodSource
    clientSourceElement: clientSourceElement.
  self selector asSymbol == newSelector
    ifTrue: [ self object trimToHomeFrame ].
  ^ newSelector