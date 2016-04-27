stack
stack
	^ stack ifNil: [ stack := self stackFromList: stackClientElement firstList key ]