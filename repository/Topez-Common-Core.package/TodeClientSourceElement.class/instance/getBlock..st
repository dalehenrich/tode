as yet unclassified
getBlock: aBlock
  self blockCache add: aBlock.
  getBlockOop := aBlock asOop