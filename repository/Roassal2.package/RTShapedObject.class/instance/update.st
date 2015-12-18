updating
update
	"Update the trachel shape and reset the path. This has the effect of moving the visual widget"
	shape updateFor: self.
	trachelShape ifNotNil: [ trachelShape resetPath ]
