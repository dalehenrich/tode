converting
convertString: aString
	| array |
	array := (1 to: aString size) collect: [ :n | convertions at: (aString at: n) ifAbsent: [ aString at: n ] ].
	^ array inject: '' into: [ :acc :e | acc, (e asString) ].
	