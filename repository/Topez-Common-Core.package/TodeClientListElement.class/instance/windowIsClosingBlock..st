updating
windowIsClosingBlock: aBlock
  aBlock ifNil: [ ^ self ].
  self blockCache add: aBlock.
  windowIsClosingBlockOop := aBlock asOop