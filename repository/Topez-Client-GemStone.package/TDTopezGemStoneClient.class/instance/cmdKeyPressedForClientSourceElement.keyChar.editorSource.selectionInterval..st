as yet unclassified
cmdKeyPressedForClientSourceElement: aClientSourceElement keyChar: keyChar editorSource: editorSource selectionInterval: selectionInterval
  | oopType |
  oopType := self session
    rawReceiverNB: aClientSourceElement cmdKeyBlockOopType
    perform: #'value:value:value:value:value:'
    withArgs:
      {(keyChar codePoint).
      (selectionInterval first).
      (selectionInterval last).
      editorSource.
      (aClientSourceElement clientElementOopType)}.
  ^ self session library localFor: oopType