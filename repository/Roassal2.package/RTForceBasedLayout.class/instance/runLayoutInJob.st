hook
runLayoutInJob
	[ :job | 
	job
		title: 'Laying out elements';
		min: 1 - alpha;
		max: 1.
	nbIterations = 0
		ifTrue: [ 
			[ 
			alpha := alpha * 0.99.
			alpha > 0.005 ]
				whileTrue: [ 
					self step.
					job currentValue: 1 - alpha ] ]
		ifFalse: [ 
			nbIterations
				timesRepeat: [ 
					alpha := alpha * 0.99.
					self step.
					job currentValue: 1 - alpha ] ] ] asJob run