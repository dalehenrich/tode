accessing
itemSelected: index
  | oopType |
  index = 0
    ifTrue: [ ^ self ].
  oopType := self session
    rawReceiverNB: self itemSelectedBlockOopType
    perform: 'value:value:'
    withArgs:
      {(self clientElementOopType).
      index}