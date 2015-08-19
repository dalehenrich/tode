switches
switchAction: switchIndex
	| actionSelector |
	actionSelector := (self switchSpecs at: switchIndex) at: 2