as yet unclassified
compileSource: theSource
  | selector newSelector |
  selector := self selector.
  newSelector := self object
    compile: theSource withGemstoneLineEndings
    classified: self methodProtocol.
  selector asSymbol ~~ newSelector
    ifTrue: [ self differentMethodCreated: newSelector ].
  ^ newSelector