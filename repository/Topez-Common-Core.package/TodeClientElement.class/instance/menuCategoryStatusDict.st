accessing
menuCategoryStatusDict
	menuCategoryStatusDict ifNil: [ menuCategoryStatusDict := Dictionary new ].
	^ menuCategoryStatusDict