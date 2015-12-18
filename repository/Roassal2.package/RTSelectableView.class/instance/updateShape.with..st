as yet unclassified
updateShape: s with: e
	"Update for box shape"
	| p k o extent | 
	p := e positionFromCamera.
	k := #rtorigin.
	(s attributes includesKey: k) ifTrue: [
		o := s attributes at: k.
		extent :=  p - o.
		extent x < 0 ifTrue: [ extent := (extent x negated)@extent y. o := (o x - extent x)@ o y ].
		extent y < 0 ifTrue: [ extent := extent x @ (extent y negated). o := o x @ (o y - extent y) ].
		s trachelShape extent: extent.
		s translateTo: o + (extent /2).
		] ifFalse: [
		s translateTo: p.
		s attributes at: k put: p].