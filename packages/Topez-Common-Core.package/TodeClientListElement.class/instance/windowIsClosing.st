as yet unclassified
windowIsClosing
  windowIsClosingBlockOop ifNil: [ ^ self ].
  self session rawReceiverNB: self windowIsClosingBlockOopType perform: 'value:' withArgs: {(self clientElementOopType)}