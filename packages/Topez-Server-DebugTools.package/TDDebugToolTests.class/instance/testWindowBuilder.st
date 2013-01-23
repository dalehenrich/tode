as yet unclassified
testWindowBuilder
  GsFile gciLogServer: 'START: TDDebugToolTests>>testWindowBuilder'.
  self windowBuilderTestFixture
    do: [ :ar | 
      | object expected actual actualPrintString node aspect windowBuilder clientElement windowId |
      object := ar at: 1.
      aspect := ar at: 2.
      windowId := ar at: 3.
      expected := ar at: 4.
      windowBuilder := self topez editorNodeFor: object aspect: aspect.
      clientElement := windowBuilder
        buildClientElement: nil
        topez: self topez
        aspect: aspect
        windowId: windowId.
      node := clientElement first asTDObjectNode: nil topez: self topez aspect: aspect.
      actual := self dsDisplayFor: node level: 1.
      actualPrintString := actual printString.
      actual = expected
        ifFalse: [ self halt ].
      self assert: actual = expected ].
  GsFile gciLogServer: 'END: TDDebugToolTests>>testWindowBuilder'