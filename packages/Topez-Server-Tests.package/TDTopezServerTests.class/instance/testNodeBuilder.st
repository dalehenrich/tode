as yet unclassified
testNodeBuilder
  | topez |
  topez := TDTopezServer new.
  self nodeBuilderTestFixture
    do: [ :ar | 
      | object aspect tdNode expectedNodeSpec |
      object := ar at: 1.
      aspect := ar at: 2.
      expectedNodeSpec := ar at: 3.
      tdNode := topez buildNode: nil for: object aspect: aspect.
      self assert: false	"need to test bits and pieces of the ObjectNode" ]