as yet unclassified
spawnShell: topezServerOop
  self session
    rawReceiverNB: self clientElementOopType
    perform: 'spawnShellForClientElement:'
    withArgs: {(TZHeaderGemStone oop: self topezServerOop)}