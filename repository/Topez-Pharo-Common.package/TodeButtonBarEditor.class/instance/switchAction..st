switches
switchAction: switchIndex
	| actionSelector |
	actionSelector := (self switchSpecs at: switchIndex) at: 2.
	(self topez switchActionForClientButtonBarElement: self clientElement selector: actionSelector)
		ifTrue: [ self buttonBarState: ((self switchSpecs at: switchIndex) at: 1) ].
	^ nil