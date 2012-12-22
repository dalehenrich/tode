as yet unclassified
test
  "test <directory-name>"

  | node testNode suiteOrTestCase suite results directoryName |
  directoryName := tokens at: 2.
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
  suiteOrTestCase := objIn.
  suite := (suiteOrTestCase isKindOf: TestSuite)
    ifTrue: [ suiteOrTestCase ]
    ifFalse: [ 
      (TestSuite named: directoryName)
        addTest: suiteOrTestCase;
        yourself ].
  suite name: directoryName.
  results := suite run.
  testNode addChildNode: (self testNode: directoryName suite: suite results: results).
  ^ results