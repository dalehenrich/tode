alignment
fixedEncompassingRectangle
 	| shapes |
	shapes := self view canvas shapes.
	canvas := shapes first encompassingRectangle.
	shapes do: [ :s| |rect|
				rect := s encompassingRectangle.
				rect height < 0 
					ifTrue: [ rect := Rectangle origin: rect bottomLeft corner: rect topRight].
				canvas := canvas merge: rect.
				 ].
	^canvas 