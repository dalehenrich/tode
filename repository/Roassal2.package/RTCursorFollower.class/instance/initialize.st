initialization
initialize
	super initialize.
	labelXTextConvertion := [ :v | v round: 2 ].
	labelYTextConvertion := [ :v | v round: 2 ]