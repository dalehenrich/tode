as yet unclassified
run: suite testNode: testNode
  | results resultsNode |
  results := TestResult new.
  resultsNode := (self resultsNode: results)
    elementRenderAttributeBlock: [ :theNode :elementName | self renderNameAttributesFor: theNode basicContents elementName: elementName ];
    renderAttributeBlock: [ :theNode | self renderNameAttributesFor: theNode basicContents ];
    yourself.
  testNode
    addChildNode: resultsNode;
    yourself.
  suite run: results.
  ^ self testSummary: testNode