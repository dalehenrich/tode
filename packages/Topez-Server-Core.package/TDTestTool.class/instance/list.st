as yet unclassified
list
  "ts list [<test-path>]"

  | testNode |
  testNode := self topez lookup: self defaultHomeTestPath.
  topez setCurrentNode: testNode.
  ^ (topez commands at: 'ds') block
    value: topez
    value: testNode
    value:
      {'ds'.
      (testNode printString , 'results')}
    value: nil