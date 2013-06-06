as yet unclassified
setSourceForClientSourceElement: aClientSourceElement source: aString
  self session
    rawReceiverNB: aClientSourceElement setBlockOopType
    perform: #'value:value:'
    withArgs:
      {(aString asString).
      (aClientSourceElement clientElementOopType)}