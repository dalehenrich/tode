updating
windowIsClosingBlock: aBlock
  aBlock ifNil: [ ^ self ].
  windowIsClosingBlock := aBlock