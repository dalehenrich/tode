accessing
setBlockOops
  super setBlockOops.
  self listBlock ifNotNil: [ :block | listBlockOop := block asOop ].
  self itemSelectedBlock
    ifNotNil: [ :block | itemSelectedBlockOop := block asOop ]