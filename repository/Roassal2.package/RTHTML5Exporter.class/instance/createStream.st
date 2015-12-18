initialize-release
createStream
	| dir  filename |
	dir := self directory.
	filename := dir / self fileName.
	filename exists ifTrue: [ filename delete ].
	stream := filename writeStream.
	^ filename