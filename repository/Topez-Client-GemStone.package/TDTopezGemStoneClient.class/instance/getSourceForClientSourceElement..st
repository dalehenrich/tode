as yet unclassified
getSourceForClientSourceElement: aClientSourceElement
  | oopType |
  oopType := self session
    rawReceiverNB: aClientSourceElement getBlockOopType
    perform: #'value'
    withArgs: #().
  ^ self session library localFor: oopType