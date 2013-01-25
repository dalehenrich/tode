as yet unclassified
executeWindowBuilderLookupSpecs: windowBuilderLookupSpecs
  "object aspect expected"

  windowBuilderLookupSpecs
    do: [ :ar | 
      | object expected actual aspect actualPrintString |
      object := ar at: 1.
      aspect := ar at: 2.
      expected := ar at: 3.
      actual := self topez editorNodeClassFor: object aspect: aspect.
      actualPrintString := actual printString.
      self assert: actual = expected ]