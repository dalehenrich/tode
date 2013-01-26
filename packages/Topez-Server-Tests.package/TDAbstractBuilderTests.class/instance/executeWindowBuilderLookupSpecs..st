as yet unclassified
executeWindowBuilderLookupSpecs: windowBuilderLookupSpecs
  "object aspect expected"

  windowBuilderLookupSpecs
    do: [ :ar | 
      | object expected aspect actualPrintString found |
      object := ar at: 1.
      aspect := ar at: 2.
      expected := ar at: 3.
      found := false.
      self topez
        editorNodeClassFor: object
        aspect: aspect
        do: [ :actual :finalAspect | 
          actualPrintString := actual printString.
          self assert: actual = expected.
          found := true ].
      self assert: found ]