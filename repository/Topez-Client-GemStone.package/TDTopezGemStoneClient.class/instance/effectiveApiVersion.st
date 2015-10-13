as yet unclassified
effectiveApiVersion
	effectiveApiVersion ifNil: [ ^ '1.0.0' asMetacelloVersionNumber ].
	^ effectiveApiVersion