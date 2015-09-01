initialization
windowIsClosing
	self clientElementStack do: [ :ce | self topez retireClientElement: ce ].
	clientElement ifNotNil: [ clientElement windowIsClosing ]