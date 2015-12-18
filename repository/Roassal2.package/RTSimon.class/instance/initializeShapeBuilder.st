initialization
initializeShapeBuilder
	self shape arc  
		outerAngle: [ :object | ((self models indexOf: object) - 1) * (360.0 / self models size) ] innerAngle: [ :object | 360.0 / self models size ];
		innerRadius: 50;
		externalRadius: 90;
		color: RTNIdentityNormalizer new