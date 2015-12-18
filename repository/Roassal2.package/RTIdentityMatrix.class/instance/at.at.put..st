accessing
at: u at: v put: aBoolean
	
	| row |
	"u -> v"
	row := rows
		at: u
		ifAbsentPut: [IdentityDictionary new].
	row at: v put: aBoolean.	"v -> u"
	row := rows
		at: v
		ifAbsentPut: [IdentityDictionary new].
	row at: u put: aBoolean