as yet unclassified
runX
  "old ts run command ... dump this unless I miss it..."

  | suitePath suiteNode testNode suite |
  suitePath := self defaultHomeTestPath , 'suite'.
  suiteNode := self topez lookup: suitePath.
  testNode := self topez lookup: self defaultHomeTestPath.
  suite := suiteNode basicContents.
  testNode addChildNode: (self suiteNode: testNode suite: suite).
  ^ self runSuite: suite testNode: testNode