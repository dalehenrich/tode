accessing
at: u at: v
	
	| row |
	row := rows
		at: u
		ifAbsentPut: [IdentityDictionary new].
	^row
		at: v
		ifAbsent: [false]