as yet unclassified
testsuite: suite
  | node testNode rootPath |
  rootPath := '/tmp/t/'.
  topez ensureChildrenExistIn: rootPath.
  node := topez lookup: rootPath.
  testNode := node
    childNamed: 'tests'
    ifAbsent: [ 
      node
        addChildNode:
          (TDDirectoryNode new
            name: 'tests';
            readMe: 'test results';
            yourself) ].
  testNode addChildNode: (self suiteNode: testNode suite: suite).
  ^ self runSuite: suite testNode: testNode