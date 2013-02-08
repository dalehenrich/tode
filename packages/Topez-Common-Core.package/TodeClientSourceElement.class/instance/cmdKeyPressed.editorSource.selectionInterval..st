as yet unclassified
cmdKeyPressed: keyChar editorSource: editorSource selectionInterval: selectionInterval
  | oopType |
  cmdKeyBlockOop ifNil: [ ^ false ].
  oopType := self session
    rawReceiverNB: self cmdKeyBlockOopType
    perform: #'value:value:value:value:value:'
    withArgs:
      {(keyChar codePoint).
      (selectionInterval first).
      (selectionInterval last).
      editorSource.
      (self clientElementOopType)}.
  ^ self session library localFor: oopType