public - adding
addAll: someObjects
	^ someObjects collect: [ :o | self add: o ]
	