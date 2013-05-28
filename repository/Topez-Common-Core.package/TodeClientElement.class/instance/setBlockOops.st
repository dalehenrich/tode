as yet unclassified
setBlockOops
  self keyboardEventBlock
    ifNotNil: [ :block | keyboardEventBlockOop := block asOop ]