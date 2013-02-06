as yet unclassified
cmdKeyPressed: keyChar selectionInterval: selectionInterval
  | oopType |
  cmdKeyBlockOop ifNil: [ ^ false ].
  oopType := self session
    rawReceiverNB: self cmdKeyBlockOopType
    perform: #'value:value:value:value:'
    withArgs:
      {(keyChar codePoint).
      (selectionInterval first).
      (selectionInterval last).
      (self clientElementOopType)}.
  ^ self session library localFor: oopType