adding - removing
removeElement: anElement
	elements remove: anElement ifAbsent: [ ].
	anElement trachelShape remove.