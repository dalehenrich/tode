as yet unclassified
testWindowBuilder
  | topez |
  topez := TDTopezServer new.
  self windowBuilderTestFixture
    do: [ :ar | 
      | object aspect windowBuilder clientElement windowId expected stream actual |
      object := ar at: 1.
      aspect := ar at: 2.
      windowId := ar at: 3.
      expected := ar at: 4.
      windowBuilder := topez editorNodeFor: object aspect: aspect.
      clientElement := windowBuilder
        buildClientElement: nil
        topez: self
        aspect: aspect
        windowId: windowId.
      stream := WriteStream on: String new.
      clientElement
        tzNodeDisplayOn: stream
        limit: 160
        displayOops: false
        compacted: false.
      actual := stream contents.
      self assert: actual = expected ]