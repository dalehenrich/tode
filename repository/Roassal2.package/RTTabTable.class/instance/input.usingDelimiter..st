updating
input: txt usingDelimiter: delimitersAsCharacter
	"txt is a large string in which we have one entry per line"

	values := (txt lines 
					select: #notEmpty 
					thenCollect: [ :l | self breakDown: l trimBoth usingDelimiters: delimitersAsCharacter asString ])
		select: #notEmpty