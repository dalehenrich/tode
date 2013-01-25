as yet unclassified
executeWindowBuilderSpecs: windowBuilderSpecs
  "object aspect windowId expected [ block ]"

  windowBuilderSpecs
    do: [ :ar | 
      | object expected actual node aspect windowBuilder clientElement windowId actualPrintString block answer |
      object := ar at: 1.
      aspect := ar at: 2.
      windowId := ar at: 3.
      expected := ar at: 4.
      ar size == 5
        ifTrue: [ block := ar at: 5 ]
        ifFalse: [ block := [ :nde | self dsDisplayFor: nde level: 1 ] ].
      windowBuilder := self topez editorNodeFor: object aspect: aspect.
      clientElement := windowBuilder
        buildClientElement: nil
        topez: self topez
        aspect: aspect
        windowName: nil
        windowId: windowId.
      node := clientElement first asTDObjectNode: nil topez: self topez aspect: aspect.
      actual := block value: node.
      actualPrintString := actual printString.
      self assert: actual = expected ]