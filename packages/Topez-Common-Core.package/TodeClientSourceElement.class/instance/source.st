as yet unclassified
source
  | oopType |
  oopType := self session rawReceiverNB: self getBlockOopType perform: 'value' withArgs: #().
  ^ self session library localFor: oopType