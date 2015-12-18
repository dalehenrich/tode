initialization
initialize
	super initialize.
	interactions := Dictionary new.
	marginX := 0.
	marginY := 0.
	paddingX := 0.
	paddingY := 0.
	functions := OrderedCollection new.
	globals := OrderedCollection new.
	buttons := OrderedCollection new.
	buttonStart  := 0@0.