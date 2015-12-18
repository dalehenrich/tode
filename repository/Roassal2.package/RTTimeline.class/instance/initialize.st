initialization
initialize
	super initialize.
	sets := OrderedCollection new.
	elements := OrderedCollection new.
	timelineLabelBuilder := RTBuilder new.
	timelineLabelBuilder shape label.
	timelineLabel := #yourself.
	self axisY noTick; noLabel.