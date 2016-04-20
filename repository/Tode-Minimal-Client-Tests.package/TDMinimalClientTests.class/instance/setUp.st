running
setUp
	super setUp.
	client := (TDMinimalClient loginWith: self sessionDescription)
		debugMode: self debugMode;
		yourself