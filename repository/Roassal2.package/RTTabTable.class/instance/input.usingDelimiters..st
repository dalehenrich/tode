updating
input: txt usingDelimiters: delimitersAsString
	"txt is a large string in which we have one entry per line"
	values := txt lines collect: [ :l | l subStrings: delimitersAsString ]