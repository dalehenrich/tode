accessing
list
  | oopType stonString |
  oopType := self session rawReceiverNB: self listBlockOopType perform: 'value' withArgs: #().
  stonString := self session library localFor: oopType.
  ^ STON fromString: stonString