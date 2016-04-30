stack
stack
	^ stack ifNil: [ stack := self stackFromList: self stackClientElement clientElement firstList key ]