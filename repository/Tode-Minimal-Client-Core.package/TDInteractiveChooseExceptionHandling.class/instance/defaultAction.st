actions
defaultAction
	^ UIManager default
		confirm: self message
		trueChoice: 'Proceed'
		falseChoice: 'Abort'
		cancelChoice: 'Debug'
		default: false