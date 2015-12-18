private - utility
outerAngleOf: object
	^ ((values copyFrom: 1 to: (objects indexOf: object) - 1), (Array with: 0)) sum * 360.0 / sum