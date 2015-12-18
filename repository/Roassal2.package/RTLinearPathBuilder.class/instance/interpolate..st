as yet unclassified
interpolate: points
	| first str point |
	first := true.
	str := nil.
	point := [ :p | p x asFloat asString, ' ', p y asFloat asString ].
	points do: [ :p |
		first ifTrue: [ str := point value: p. first := false ]
		ifFalse: [ str := str, 'L', (point value: p) ]
		 ].
	^ str.