as yet unclassified
handleKeyboardEvent: event selectionIndex: selectionIndex
  | codePoint |
  keyboardEventBlockOop ifNil: [ ^ false ].
  codePoint := event keyCharacter codePoint.
  (self cmdKeyCodePoints includes: event keyCharacter codePoint)
    ifFalse: [ ^ false ].
  ^ self topez
    handleKeyboardEventForClientListElement: self
    codePoint: codePoint
    selectionIndex: selectionIndex