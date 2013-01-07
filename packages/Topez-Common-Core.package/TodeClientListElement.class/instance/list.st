accessing
list
  | oopType stonString |
  firstList
    ifNotNil: [ 
      | list |
      list := firstList.
      firstList := nil.
      ^ list ].
  oopType := self session rawReceiverNB: self listBlockOopType perform: 'value:' withArgs: {(self clientElementOopType)}.
  stonString := self session library localFor: oopType.
  ^ STON fromString: stonString