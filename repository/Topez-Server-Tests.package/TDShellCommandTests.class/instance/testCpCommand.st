as yet unclassified
testCpCommand
  | leafNode1 leafNode2 dirNode1 dirNode2 node tmpNode dirNode |
  self evaluateCommandString: 'cp --help '.
  tmpNode := self createTempNodeNode.
  leafNode1 := self createClassRefNode.
  leafNode2 := self createSenderNode.
  self deny: leafNode1 contents = leafNode2 contents.
  self
    evaluateCommandString:
      'cp ' , leafNode1 printString , ' ' , leafNode2 printString.
  node := self topez lookup: leafNode2 printString.
  self assert: leafNode1 contents = node contents.
  dirNode1 := tmpNode addChild: 'dirNode1'.
  self
    evaluateCommandString:
      'cp ' , leafNode1 printString , ' ' , dirNode1 printString.
  node := dirNode1 childNamed: leafNode1 name.
  self assert: leafNode1 contents = node contents.
  self
    evaluateCommandString:
      'cp ' , dirNode1 printString , ' ' , leafNode1 printString.
  dirNode := leafNode1 parent childNamed: dirNode1 name.
  node := dirNode childNamed: leafNode1 name.
  self assert: leafNode1 contents = node contents.
  dirNode := tmpNode addChild: 'childDir'.
  dirNode2 := dirNode addChild: 'dirNode2'.
  self
    evaluateCommandString:
      'cp ' , dirNode1 printString , ' ' , dirNode2 printString.
  dirNode := dirNode2 childNamed: dirNode1 name.
  node := dirNode childNamed: leafNode1 name.
  self assert: leafNode1 contents = node contents