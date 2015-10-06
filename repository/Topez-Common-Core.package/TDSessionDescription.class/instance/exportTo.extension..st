accessing
exportTo: filepath extension: extension
	| stream old |
	old := self excludeNetLDIPort.
	[ 
	"when exporting to file system, we are interested in including netLDIPort.. i.v.s"
	self excludeNetLDIPort: false.
	stream := FileStream forceNewFileNamed: filepath , self name , extension.
	stream lineEndConvention: #lf.
	stream nextPutAll: (TodeObjectSerializer preferredSerializer toStringPretty: self).
	stream close ]
		ensure: [ self excludeNetLDIPort: old ]