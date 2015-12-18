running
setUp
	el1 := RTBox element.
	el2 := RTBox element.
	el1 translateTo: 20 @ 20.
	el2 translateTo: 60 @ 80.
	edge := RTLine edgeFrom: el1 to: el2