as yet unclassified
spawnShell: topezServerOop
  self session
    rawReceiverNB: (self session asOopType: topezServerOop)
    perform: #'setCurrentNodeFromClientElement:'
    withArgs: {(self clientElementOopType)}