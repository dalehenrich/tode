initialization
insert: aView named: aName inPillarStream: aStream directory: aDirectory
	| s |
	s := self getIFrameDefFromView: aView label: aName directory: aDirectory.
	aStream nextPutAll: '{{{ <BR>', s, ' }}}'