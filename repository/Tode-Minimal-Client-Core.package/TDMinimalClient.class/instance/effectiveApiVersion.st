accessing
effectiveApiVersion
	effectiveApiVersion ifNil: [ effectiveApiVersion := '1.0.0' asMetacelloVersionNumber ].
	^ effectiveApiVersion