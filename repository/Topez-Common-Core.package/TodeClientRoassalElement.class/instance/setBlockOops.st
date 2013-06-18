accessing
setBlockOops
  super setBlockOops.
  self edgesBlock ifNotNil: [ :block | edgesBlockOop := block asOop ]