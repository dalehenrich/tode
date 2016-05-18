*Topez-Common-Pharo-Core
windowIsClosing
	windowIsClosingBlockOop
		ifNil: [ 
			self topez retireClientElement: self.
			^ self topez flushEventCache ].
	self topez windowIsClosingFor: self