accessing
labelStringBlock
	"Answer a block that when evaluated answers a string to be used
	as the window label."

	^ labelStringBlock ifNil: [labelStringBlock := self defaultLabelStringBlock]