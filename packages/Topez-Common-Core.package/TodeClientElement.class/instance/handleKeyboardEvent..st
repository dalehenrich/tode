as yet unclassified
handleKeyboardEvent: event
  | codePoint |
  keyboardEventBlockOop ifNil: [ ^ false ].
  codePoint := event keyCharacter codePoint.
  (self cmdKeyCodePoints includes: event keyCharacter codePoint)
    ifFalse: [ ^ false ].
  ^ self session
    rawReceiverNB: self keyboardEventBlockOopType
    perform: #'value:value:'
    withArgs:
      {true.
      codePoint}