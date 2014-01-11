as yet unclassified
elementSource: methodSource clientSourceElement: clientSourceElement
  "have to use GsProcess>>popTo: to trim the stack back to the frames homeMethod...homeMethod is indeed the outermost method for the stack of blacks"

  | newSelector |
  self inClass == nil
    ifTrue: [ self error: 'Cannot edit Executable Code' ].
  newSelector := super
    elementSource: methodSource
    clientSourceElement: clientSourceElement.
  self selector asSymbol == newSelector
    ifTrue: [ self object trimToHomeFrame ].
  ^ newSelector