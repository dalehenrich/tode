accessing
list
  | oopType stonString |
  oopType := self session
    rawReceiverNB: self listBlockOopType
    perform: 'value:'
    withArgs: {(self topez topezServerProxy)}.
  stonString := self session library localFor: oopType.
  ^ STON fromString: stonString