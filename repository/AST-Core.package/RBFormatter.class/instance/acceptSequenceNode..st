visitor-double dispatching
acceptSequenceNode: aSequenceNode 
	self formatMethodCommentFor: aSequenceNode indentBefore: false.
	self formatTemporariesFor: aSequenceNode.
	self formatStatementsFor: aSequenceNode