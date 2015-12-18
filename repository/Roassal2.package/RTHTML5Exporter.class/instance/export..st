public-exporting
export: aView
	"This is a public method"
	fileName := self createStream.
	self export: aView toStream: stream.
	^ fileName