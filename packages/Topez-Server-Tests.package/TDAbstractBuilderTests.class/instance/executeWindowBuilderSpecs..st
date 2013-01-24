as yet unclassified
executeWindowBuilderSpecs: windowBuilderSpecs
  "object aspect windowId expected"

  windowBuilderSpecs
    do: [ :ar | 
      | object expected actual node aspect windowBuilder clientElement windowId actualPrintString |
      object := ar at: 1.
      aspect := ar at: 2.
      windowId := ar at: 3.
      expected := ar at: 4.
      windowBuilder := self topez editorNodeFor: object aspect: aspect.
      clientElement := windowBuilder
        buildClientElement: nil
        topez: self topez
        aspect: aspect
        windowName: nil
        windowId: windowId.
      node := clientElement first asTDObjectNode: nil topez: self topez aspect: aspect.
      actual := self dsDisplayFor: node level: 1.
      actualPrintString := actual printString.
      self assert: actual = expected ]