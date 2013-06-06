as yet unclassified
setBlockOops
  self clientElementOop.
  self keyboardEventBlock
    ifNotNil: [ :block | keyboardEventBlockOop := block asOop ]