as yet unclassified
setBlockOops
  self clientElementOop.
  self menuActionBlock ifNotNil: [ :block | menuActionBlockOop := block asOop ].
  self windowIsClosingBlock
    ifNotNil: [ :block | windowIsClosingBlockOop := block asOop ]