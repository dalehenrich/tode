public-ui
open
	super open.
	cityBuilder evolutionPeriod isEmpty ifFalse: [
		
		self view addMenu: '<-' callback: [
			cityBuilder stepBack.
			self refreshView.
		].
		
		self view addMenu: '->' callback: [
			cityBuilder stepForward.
			self refreshView.
		].

		periodLabel := TRLabelShape new
			translateLeftTo: 30@20;
			text: (cityBuilder evolutionPeriod at: cityBuilder step) asString;
			color: Color black.
		self view canvas addFixedShape: periodLabel.
	]