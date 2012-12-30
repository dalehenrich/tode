accessing
listAt: index
  | oopType stonString |
  oopType := self session rawReceiverNB: self listAtBlockOopType perform: 'value:' withArgs: {index}.
  stonString := self session library localFor: oopType.
  ^ STON fromString: stonString