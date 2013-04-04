Private
oopTypeAt: anInteger
	"Convert offset to zero-based offset"

	^library oopTypeAtAddress: address offset: anInteger - 1.
