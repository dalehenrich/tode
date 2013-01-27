as yet unclassified
handleKeyboardEvent: event selectionIndex: selectionIndex
  | codePoint oopType |
  keyboardEventBlockOop ifNil: [ ^ false ].
  codePoint := event keyCharacter codePoint.
  (self cmdKeyCodePoints includes: event keyCharacter codePoint)
    ifFalse: [ ^ false ].
  oopType := self session
    rawReceiverNB: self keyboardEventBlockOopType
    perform: #'value:value:value:value:'
    withArgs:
      {true.
      codePoint.
      (self clientElementOopType).
      selectionIndex}.
  ^ self session library localFor: oopType