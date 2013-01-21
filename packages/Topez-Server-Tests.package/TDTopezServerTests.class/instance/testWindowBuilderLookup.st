as yet unclassified
testWindowBuilderLookup
  self windowBuilderLookupTestFixture
    do: [ :ar | 
      | object aspect actual expected |
      object := ar at: 1.
      aspect := ar at: 2.
      expected := ar at: 3.
      actual := self topez editorNodeClassFor: object aspect: aspect.
      self assert: actual = expected ]