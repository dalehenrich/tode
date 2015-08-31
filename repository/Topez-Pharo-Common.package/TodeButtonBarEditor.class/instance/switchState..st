switches
switchState: switchIndex
	^ ((self switchSpecs at: switchIndex) at: 1) = self buttonBarState