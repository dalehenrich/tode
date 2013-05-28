as yet unclassified
handleKeyboardEventForClientListElement: aClientElement codePoint: codePoint selectionIndex: selectionIndex
  | oopType |
  oopType := self session
    rawReceiverNB: aClientElement keyboardEventBlockOopType
    perform: #'value:value:value:value:'
    withArgs:
      {true.
      codePoint.
      (aClientElement clientElementOopType).
      selectionIndex}.
  ^ self session library localFor: oopType