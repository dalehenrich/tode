accessing
list
  | oopType stonString |
  oopType := self session rawReceiverNB: self listBlockOopType perform: 'value:' withArgs: {(self topez)}.
  stonString := self session library localFor: oopType.
  ^ STON fromString: stonString