as yet unclassified
setBlock: aBlock
  self blockCache add: aBlock.
  setBlockOop := aBlock asOop