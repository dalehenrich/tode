as yet unclassified
addBorderWidth: aShape
	(aShape strokePaint isNil or: [ aShape strokeWidth < 0 ]) ifTrue: [ ^ self ].
	stream nextPutAll: 'sw: ', aShape strokeWidth asString, ','.
	