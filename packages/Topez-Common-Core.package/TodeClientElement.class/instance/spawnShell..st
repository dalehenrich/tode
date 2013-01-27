as yet unclassified
spawnShell: topezServerOop
  self session
    rawReceiverNB: (TZHeaderGemStone oop: self topezServerOop)
    perform: 'setCurrentNodeFromClientElement:'
    withArgs: {(self clientElementOopType)}