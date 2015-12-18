hook
doExecute: nodeElements
	self start: nodeElements.
	self shouldRunLayoutWithProgressBar
		ifTrue: [ self runLayoutInJob ]
		ifFalse: [ self runLayoutSimply ].
	alpha := 0.
	nodes do: [ :e | translator translateTopLeftOf: e to: e position ]