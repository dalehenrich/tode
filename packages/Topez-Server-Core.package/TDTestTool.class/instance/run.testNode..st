as yet unclassified
run: suite testNode: testNode
  | results resultsNode |
  results := suite run.
  resultsNode := (self resultsNode: results)
    elementRenderAttributeBlock: [ :theNode :elementName | self renderNameAttributesFor: theNode basicContents elementName: elementName ];
    renderAttributeBlock: [ :theNode | self renderNameAttributesFor: theNode basicContents ];
    yourself.
  testNode
    addChildNode: resultsNode;
    yourself.
  topez setCurrentNode: testNode.
  ^ (topez commands at: 'ds') block
    value: topez
    value: testNode
    value:
      {'ds'.
      (testNode printString , 'results')}
    value: nil