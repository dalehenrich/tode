as yet unclassified
testBrowseList
  "run without errors ... to keep me honest"

  | def targetNode tmpNode node |
  def := TDMethodDefinition
    className: 'TDShellBrowseCommandTests'
    isMeta: false
    selector: #'testBrowseDiff'.
  tmpNode := self topez sessionTempsNode.
  node := {def} asTDObjectNode: tmpNode topez: self topez aspect: #'view'.
  node name: 'TEST'.
  tmpNode addChildNode: node.
  self topez
    evaluateCommandString: 'browse list ' , tmpNode printString , 'TEST';
    yourself