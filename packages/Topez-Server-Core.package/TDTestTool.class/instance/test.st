as yet unclassified
test
  "test <smalltalk-node-name> [ <node-name> ]"

  | suitePath suiteNode suite node testNode results resultsNodeName resultsNode |
  suitePath := tokens at: 2.
  suiteNode := self topez lookup: suitePath.
  suite := suiteNode evaluateInContext: objIn.
  node := topez lookup: '/home'.
  testNode := node
    childNamed: 'tests'
    ifAbsent: [ 
      node
        addChildNode:
          (TDDirectoryNode new
            name: 'tests';
            readMe: 'test results';
            yourself) ].
  results := suite run.
  resultsNodeName := tokens size >= 3
    ifTrue: [ tokens at: 3 ]
    ifFalse: [ suiteNode name ].
  resultsNode := testNode addChildNode: (self testNode: resultsNodeName suite: suite results: results).
  topez setCurrentNode: resultsNode.
  ^ (topez commands at: 'ds') block
    value: topez
    value: resultsNode
    value:
      {'ds'.
      (resultsNode printString , 'results')}
    value: nil