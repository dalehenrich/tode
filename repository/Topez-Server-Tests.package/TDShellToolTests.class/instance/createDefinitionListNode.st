as yet unclassified
createDefinitionListNode
  | def tmpNode node |
  def := TDMethodDefinition
    className: 'TDShellBrowseCommandTests'
    isMeta: false
    selector: #'testBrowseDiff'.
  tmpNode := self createTempNodeNode.
  node := {def} asTDObjectNode: tmpNode topez: self topez aspect: #'view'.
  node name: 'TEST'.
  tmpNode addChildNode: node.
  ^ node