as yet unclassified
spawnShell: topezServerOop
  self session
    rawReceiverNB: (TZHeaderGemStone oop: topezServerOop)
    perform: #'setCurrentNodeFromClientElement:'
    withArgs: {(self clientElementOopType)}