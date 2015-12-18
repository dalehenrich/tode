public
combine: c0 with: c1
	| vr r inst |
	vr := self centerMinus: c1 with: c0.
	vr lengthenBy: c0 r + c1 r.
	vr scaleBy: 0.5.
	r := vr magnitude.
	r >= c0 r ifTrue: [ 
		vr shortenBy: c0 r.
		vr add: c0 center.
		inst := self new.
		inst verctor: vr r: r.
		^ inst ].
	
	^ c0 r >= c1 r ifTrue: [ c0 ] ifFalse: [ c1 ].