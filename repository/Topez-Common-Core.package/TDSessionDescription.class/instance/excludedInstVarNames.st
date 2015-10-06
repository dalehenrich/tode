ston
excludedInstVarNames
	| excluded |
	excluded := OrderedCollection new.
	excluded add: #excludeNetLDIPort.
	self excludeNetLDIPort
		ifTrue: [ 
			"when excludeNetLDIPort is true, avoid exporting netLDIPort and 
			 netLDIPortRange i.v.s because we may be passing the description 
			 to an older version of tode"
			self netLDIPort isEmpty
				ifTrue: [ excluded add: #netLDIPort ].
			self netLDIPortRange ifNil: [ excluded add: #netLDIPortRange ] ].
	self snapshotDirectory isEmpty
		ifTrue: [ excluded add: #snapshotDirectory ].
	^ excluded