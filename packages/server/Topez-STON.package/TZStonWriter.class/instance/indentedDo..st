private
indentedDo: block
	level > self levelLimit ifTrue: [ ^self ].
	super indentedDo: block