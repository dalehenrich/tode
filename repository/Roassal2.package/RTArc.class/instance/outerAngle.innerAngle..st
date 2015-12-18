accessing
outerAngle: o innerAngle: i
	self alphaAngle: [ :obj | (o rtValue: obj) ].
	self betaAngle: [ :obj | (o rtValue: obj) + (i rtValue: obj) ]