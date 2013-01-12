as yet unclassified
runSuite: suite testNode: testNode
  | results resultsNode |
  results := TestResult new.
  resultsNode := self resultsNode: testNode results: results.
  testNode
    addChildNode: resultsNode;
    yourself.
  suite run: results.
  ^ self testSummary: testNode