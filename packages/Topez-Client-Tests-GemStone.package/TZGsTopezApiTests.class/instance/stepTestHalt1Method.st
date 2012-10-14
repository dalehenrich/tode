test debugging
stepTestHalt1Method
    ^ 'halt1Method
	| x |
	^self call: [
		self call: [ 
			self halt.
			x := 1].
		^1]'