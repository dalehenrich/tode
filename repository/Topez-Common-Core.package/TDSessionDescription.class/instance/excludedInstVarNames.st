ston
excludedInstVarNames
	| excluded |
	excluded := Set new.
	excluded add: #excludeNetLDIPort.
	self netLDIPortRange ifNil: [ excluded add: #netLDIPortRange ].
	self excludeNetLDIPort
		ifTrue: [ 
			"when excludeNetLDIPort is true, avoid exporting netLDIPort and 
			 netLDIPortRange i.v.s because we may be passing the description 
			 to an older version of tode"
			self netLDIPort isEmpty
				ifTrue: [ excluded add: #netLDIPort ].
			self netLDIPortRange
				ifNotNil: [ :range | 
					range isEmpty
						ifTrue: [ excluded add: #netLDIPortRange ] ].
			self authorId isEmpty
				ifTrue: [ excluded add: #authorId ] ].
	self snapshotDirectory isEmpty
		ifTrue: [ excluded add: #snapshotDirectory ].
	environmentId ifNil: [ excluded add: #environmentId ].
	todeUserId ifNil: [ excluded add: #todeUserId ].
	^ excluded