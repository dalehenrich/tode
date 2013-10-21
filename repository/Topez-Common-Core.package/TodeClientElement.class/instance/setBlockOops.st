as yet unclassified
setBlockOops
  self clientElementOop.
  self keyboardEventBlock
    ifNotNil: [ :block | keyboardEventBlockOop := block asOop ].
  self menuActionBlock ifNotNil: [ :block | menuActionBlockOop := block asOop ].
  self windowIsClosingBlock
    ifNotNil: [ :block | windowIsClosingBlockOop := block asOop ]