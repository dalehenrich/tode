as yet unclassified
executeNodeBuilderLookupSpecs: nodeBuilderLookupSpecs
  "object aspect expected"

  nodeBuilderLookupSpecs
    do: [ :ar | 
      | object expected actual actualPrintString aspect |
      object := ar at: 1.
      aspect := ar at: 2.
      expected := ar at: 3.
      actual := self topez builderClassFor: object aspect: aspect.
      actualPrintString := actual printString.
      self assert: actual = expected ]