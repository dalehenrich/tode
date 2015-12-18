private
getTile: aPoint
	"A point has to be xTile @ yTile, integers between 0 and 2^osmZoomLevel - 1"

	self assert: (aPoint x isInteger and: [ aPoint y isInteger ]).	"clamp"
	((aPoint x < 0 or: [ aPoint x >= (2 raisedTo: osmZoomLevel) ])
		or: [ aPoint y < 0 or: [ aPoint y >= (2 raisedTo: osmZoomLevel) ] ])
		ifTrue: [ ^ nil ].
	tiles
		at:
			(Array with: (aPoint x) with:
			(aPoint y) with:
			osmZoomLevel)
		put: self class emptyTile.
	[ 
	| aTile z |
	z := osmZoomLevel.
	Processor yield.
	aTile := [ 
	TRPlatform current downloadPng: 
			('https://a.tile.openstreetmap.org' asZnUrl
				addPathSegment: z printString;
				addPathSegment: aPoint x printString;
				addPathSegment: aPoint y printString , '.png') ]
		on: Error
		do: [ :ex |  ].
	semaphore
		critical: [ 
			tiles
				at:
					(Array with: (aPoint x) with:
					(aPoint y) with:
					z)
				put: aTile ].
	self signalUpdate ] fork.
	^ self class emptyTile