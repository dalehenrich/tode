interaction
windowIsClosing: listElement
  self windowIsClosingBlock ifNil: [ ^ nil ].
  ^ self windowIsClosingBlock value: listElement