as yet unclassified
testWindowBuilder
  [ 
  self windowBuilderTestFixture
    do: [ :ar | 
      | object aspect windowBuilder clientElement windowId expected actual node ps |
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
      ps := actual printString.
      self assert: actual = expected ] ]
    on: Error
    do: [ :ex | ex halt ]