*Roassal2
grayScale256: intensity
	"between 0 and 256"
	| i |
	i := intensity asFloat / 256.
	^ self r:  i g: i b: i 