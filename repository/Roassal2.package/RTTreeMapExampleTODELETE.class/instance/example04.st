examples
example04
	"
	self new example04
	"
	| b |
	b := RTTreeMapBuilder new.
	b
		extent: 400@400;
		weight: [:n | n ].
	b shape if: [ :n | n even ] fillColor: Color blue;
		if: [ :n | n odd ] fillColor: Color lightGray.
		
	b from: (1 to: 10)
		using: [:n | n < 5 ifTrue: [ Array with: n+1 with: n+2 ] ifFalse: [ #() ] ].
	b open.