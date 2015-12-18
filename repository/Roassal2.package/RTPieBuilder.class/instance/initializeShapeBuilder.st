initialization
initializeShapeBuilder
	self shape arc  
		outerAngle: [ :object | self outerAngleOf: object ]
			innerAngle: [ :object | self innerAngleOf: object ];
		innerRadius: 0;
		externalRadius: 90;
		color: RTNIdentityNormalizer new