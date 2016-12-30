accessing
selector
  self gsMethod ifNil: [ ^ #'' ].
  ^ self homeMethod selector