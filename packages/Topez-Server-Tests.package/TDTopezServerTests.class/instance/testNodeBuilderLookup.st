as yet unclassified
testNodeBuilderLookup
  | topez |
  topez := TDTopezServer new.
  self nodeBuilderTestFixture
    do: [ :ar | 
      | object aspect answer expectedBuilderClass |
      object := ar at: 1.
      aspect := ar at: 2.
      expectedBuilderClass := ar at: 3.
      answer := topez builderClassFor: object aspect: aspect.
      self assert: answer = expectedBuilderClass ]