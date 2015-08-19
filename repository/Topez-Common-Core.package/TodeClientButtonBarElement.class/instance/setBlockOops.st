accessing
setBlockOops
  super setBlockOops.
  self switchActionBlock
    ifNotNil: [ :block | switchActionBlockOop := block asOop ]