accessing
setBlockOops
	super setBlockOops.
	self childrenBlock ifNotNil: [ :block | childrenBlockOop := block asOop ].
	self parentsBlock ifNotNil: [ :block | parentsBlockOop := block asOop ]