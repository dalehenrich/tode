as yet unclassified
windowIsClosing
	windowIsClosingBlockOop
		ifNil: [ 
			self topez retireClientElement: self.
			^ self topez flushEventCache ].
	self topez windowIsClosingFor: self