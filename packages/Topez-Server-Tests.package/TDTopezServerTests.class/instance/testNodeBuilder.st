as yet unclassified
testNodeBuilder
  self nodeBuilderTestFixture
    do: [ :ar | 
      | object aspect tdNode expected actual actualPrintString |
      object := ar at: 1.
      aspect := ar at: 2.
      expected := ar at: 3.
      tdNode := self topez buildNode: nil for: object aspect: aspect.
      actual := self dsDisplayFor: tdNode level: 1.
      actualPrintString := actual printString.
      self assert: actual = expected ]