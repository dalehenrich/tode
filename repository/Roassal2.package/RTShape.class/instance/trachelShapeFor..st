public
trachelShapeFor: anElement
	| trachelShape |
	trachelShape := self trachelShapeClass new.
	self updateFor: anElement trachelShape: trachelShape.
	^ trachelShape