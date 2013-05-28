as yet unclassified
spawnShellFor: aClientElement
  | spawn clientTopez |
  spawn := self spawnWindow.
  self session
    rawReceiverNB: (self session asOopType: self topezServerOop)
    perform: #'setCurrentNodeFromClientElement:'
    withArgs: {(aClientElement clientElementOopType)}