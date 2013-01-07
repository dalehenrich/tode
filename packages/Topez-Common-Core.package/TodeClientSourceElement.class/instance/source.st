as yet unclassified
source
  | oopType |
  firstSource
    ifNotNil: [ 
      | source |
      source := self firstSource.
      firstSource := nil.
      ^ source ].
  oopType := self session rawReceiverNB: self getBlockOopType perform: 'value' withArgs: #().
  ^ self session library localFor: oopType