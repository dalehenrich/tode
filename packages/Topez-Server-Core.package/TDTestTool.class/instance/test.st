as yet unclassified
test
  "test <directory-name>"

  | node testNode dirNode suiteOrTestCase suite results directoryName |
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
  dirNode := testNode
    childNamed: directoryName
    ifAbsent: [ 
      testNode
        addChildNode:
          (TDDirectoryNode new
            name: directoryName;
            readMe: directoryName , ' results';
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
  dirNode
    addChildNode: (self suiteNode: suite);
    addChildNode: (self resultsNode: results);
    yourself.
  ^ results