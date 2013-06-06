accessing
setBlockOops
  super setBlockOops.
  self listBlock ifNotNil: [ :block | listBlockOop := block asOop ].
  self itemSelectedBlock
    ifNotNil: [ :block | itemSelectedBlockOop := block asOop ].
  self windowIsClosingBlock
    ifNotNil: [ :block | windowIsClosingBlockOop := block asOop ]