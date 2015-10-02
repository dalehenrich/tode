ston
excludedInstVarNames
	| excluded |
	excluded := OrderedCollection new.
	self netLDIPort isEmpty
		ifTrue: [ excluded add: #netLDIPort ].
	self netLDIPortRange ifNil: [ excluded add: #netLDIPortRange ].
	self snapshotDirectory isEmpty
		ifTrue: [ excluded add: #snapshotDirectory ].
	^ excluded