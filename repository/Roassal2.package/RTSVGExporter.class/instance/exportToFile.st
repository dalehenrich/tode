exporting
exportToFile

	| file |
	file := self fileName asFileReference.
	file exists ifTrue: [ file delete ].
	self fileName asFileReference writeStreamDo: [: fileStream |
		self exportOnStream: fileStream ]