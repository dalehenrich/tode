as yet unclassified
setBlockOops
  super setBlockOops.
  self inClass ifNotNil: [ :block | inClassOop := inClass asOop ]