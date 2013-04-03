as yet unclassified
executeNodeBuilderLookupSpecs: nodeBuilderLookupSpecs
  "object aspect expected"

  nodeBuilderLookupSpecs
    do: [ :ar | 
      | object expected actualPrintString aspect found |
      object := ar at: 1.
      aspect := ar at: 2.
      expected := ar at: 3.
      found := false.
      self topez
        builderClassNameFor: object
        aspect: aspect
        do: [ :actual :finalAspect | 
          actualPrintString := actual printString.
          self assert: actual = expected.
          found := true ].
      self assert: found ]