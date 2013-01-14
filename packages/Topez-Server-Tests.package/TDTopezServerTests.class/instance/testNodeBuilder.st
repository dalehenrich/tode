as yet unclassified
testNodeBuilder
  | topez stream x |
  topez := TDTopezServer new.
  self nodeBuilderTestFixture
    do: [ :ar | 
      | object aspect tdNode expectedNodeSpec |
      object := ar at: 1.
      aspect := ar at: 2.
      expectedNodeSpec := ar at: 3.
      tdNode := topez buildNode: nil for: object aspect: aspect.
      stream := WriteStream on: String new.
      (TDShellTool
        topez: topez
        objIn: nil
        tokens: {}
        windowId: nil)
        dsNode: tdNode
        level: 1
        displayOops: false
        on: stream.
      self assert: (x := stream contents) = expectedNodeSpec ]