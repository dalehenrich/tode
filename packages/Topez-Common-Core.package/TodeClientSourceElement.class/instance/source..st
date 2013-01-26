as yet unclassified
source: aString
  self session
    rawReceiverNB: self setBlockOopType
    perform: 'value:value:'
    withArgs:
      {(aString asString).
      (self clientElementOopType)}