accessing
itemSelected: index
  | oopType |
  oopType := self session
    rawReceiverNB: self itemSelectedBlockOopType
    perform: 'value:value:'
    withArgs:
      {(self clientElementOopType).
      index}