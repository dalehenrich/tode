public-exporting
export: aView toStream: aStream

	self assert: [ aStream isStream ].
	
	self createJS.
	stream := aStream.
	[
		self addStart: aView.
		self exportSVG: aView.
		self addEnd.
	] ensure: [ stream close. ].