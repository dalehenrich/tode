utility
refreshView
	cityElements do: [ :c |
		|w h|
		w := cityBuilder shape width rtValue: c.
		h := cityBuilder shape height rtValue: c.
		self view addAnimation: (RTColorTransitionAnimation new
										toColor: (cityBuilder shape color rtValue: c)
										during: 0.4 on: c).
		self view addAnimation: (RTResizeMove new toExtent: w @ h during: 0.4 on: c).
	].
	periodLabel text: (cityBuilder evolutionPeriod at: cityBuilder step) asString.
	self view canvas signalUpdate.