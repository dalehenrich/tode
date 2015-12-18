as yet unclassified
palette

	^ colorScheme isNil 
		ifTrue: [ self defaultPalette ]
		ifFalse: [ (ColorPalette paletteFor: colorScheme) colors: numberOfBuckets scheme: colorScheme
			]