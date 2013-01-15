as yet unclassified
testNodeBuilderLookup
  self nodeBuilderLookupTestFixture
    do: [ :ar | 
      | object aspect actual expected |
      object := ar at: 1.
      aspect := ar at: 2.
      expected := ar at: 3.
      actual := self topez builderClassFor: object aspect: aspect.
      self assert: actual = expected ]