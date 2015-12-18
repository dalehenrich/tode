accessing
level: f
	"f - float is between 0.0 and 1.0"
	| arr c1 c2 nr ng nb i1 i2 nbColors ff  |
	(f isNaN) ifTrue: [ ^ Color white ]. 
	
	arr := self indexesFor: f.
	nbColors := colors size.
	
	i1 := arr first.
	i2 := arr second.
	
	i1 >= colors size ifTrue: [ ^ colors last ].
	c1 := colors at: (i1).
	c2 := colors at: (i2).
	
	ff :=( f - (i1 -1 / (nbColors - 1)) / (1 / (nbColors - 1)) ).
	
	nr := (c2 red - c1 red) * ff + c1 red.
	ng := (c2 green - c1 green) * ff + c1 green.
	nb := (c2 blue - c1 blue) * ff + c1 blue.
	
	^ Color r: nr g: ng  b: nb 