as yet unclassified
compileSource: theSource
  | beh selector newSelector |
  beh := self theBehavior.
  selector := self selector.
  newSelector := beh
    compile: theSource withGemstoneLineEndings
    classified: self methodProtocol.
  selector asSymbol ~~ newSelector
    ifTrue: [ self differentMethodCreated: newSelector ].
  ^ newSelector