as yet unclassified
openWorkspaceFor: aClientElement
  self  session
    rawReceiverNB: (self session asOopType: self topezServerOop)
    perform: #'openWorkspaceForClientElement:'
    withArgs: {(aClientElement clientElementOopType)}