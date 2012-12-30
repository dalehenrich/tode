accessing
listAt: index
  | oopType stonString |
  oopType := self session
    rawReceiverNB: self listAtBlockOopType
    perform: 'value:value:'
    withArgs:
      {(self topez).
      index}.
  stonString := self session library localFor: oopType.
  ^ STON fromString: stonString