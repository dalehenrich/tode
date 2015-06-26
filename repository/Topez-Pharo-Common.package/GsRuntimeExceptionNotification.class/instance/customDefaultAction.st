accessing
customDefaultAction
	| answer |
	Smalltalk isHeadless
		ifTrue: [ 
			^ {#logStack.
			(self description)} ].
	answer := UIManager default
		confirm: (self description withNoLineLongerThan: 80)
		trueChoice: 'Proceed'
		falseChoice: 'Abort'
		cancelChoice: 'Debug'
		default: false.
	answer
		ifNil: [ 
			^ {#debug.
			self} ].
	answer
		ifTrue: [ ^ #resume ].
	^ {#abort.
	(self topez objectSerializer toString: 'Aborted...')}