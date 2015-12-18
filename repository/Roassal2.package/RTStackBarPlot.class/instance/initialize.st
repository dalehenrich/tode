initialization
initialize
	super initialize.
	values := OrderedCollection new.
	colorPalette := RTMultiLinearColorForIdentity new.
	self barWidth: self defaultBarWidth height: 20.
	
	labelConditionalBlock := true.
	labelColor := Color black