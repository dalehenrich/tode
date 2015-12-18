rotating labels
fiveLabelFlowers
	"
	self new fiveLabelFlowers.
	"
	| t label box points |
	t := TRCanvas new.
	t color: Color white.

	points := OrderedCollection new.
	points add: 0 @ 0.
	points add: 150 @ 150.
	points add: -150 @ -150.
	points add: 150 @ -150.
	points add: -150 @ 150.
	points do: [ :position |
		1 to: 180 by: 25 do: [ :angle |
			box := TRBoxShape new.
			box from: position -1 to: position + 1.
			box color: (Color blue alpha: 0.5).
			t addShape: box.
			
			label := TRRotatedLabelShape new.
			label text: 'Hello World Bonjour Monde'.
			label color: Color black.
			label position: position.
			label angleInDegree: angle.
			t addShape: label ] ].
	
	t open