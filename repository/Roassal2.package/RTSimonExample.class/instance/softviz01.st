software visualization
softviz01
	"
	self new softviz01

	LOC, NOM, NOV, NOS
	"
	| b | 
	b := RTSimon new.
	b shape current
				outerAngle: [ :cls | cls numberOfVariables * 25 ] innerAngle: [ :cls | cls numberOfMethods / 1 ];
				innerRadius: [ :cls | cls withAllSuperclasses size * 10 ];
				thickness: [ :cls | cls numberOfMethods * 2 ];
				color: (Color red alpha: 0.2).
	b models: RTObject withAllSubclasses.
	b open