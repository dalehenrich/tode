as yet unclassified
test
  "test <sunit-suite-file>
        @<sunit-suite-path>
  "

  | suitePath suite node testNode |
  suitePath := tokens at: 2.
  suite := (suitePath beginsWith: '@')
    ifTrue: [ self self resolveAtPathReference: suitePath ]
    ifFalse: [ 
      | suiteNode |
      suiteNode := self topez lookup: suitePath.
      suiteNode evaluateInContext: objIn ].
  node := topez homeNode.
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