updating
windowIsClosingBlock: aBlock
  self blockCache add: aBlock.
  windowIsClosingBlockOop := aBlock asOop