initialization
initialize
	super initialize.
	textTokenizer := self defaultTokenizer.
	wordShapeBuilder := RTShapeBuilder new.
	wordShapeBuilder text.
	wordInteractionBuilder := RTInteractionBuilder new.
	wordHook := [ :anElement :anInterval | nil ].
	hook := [ :anElement | nil ].
	padding := 5