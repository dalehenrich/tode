accessing
alphaAngle: aValueOrAOneArgBlock
	"aValueOrAOneArgBlock is applied on the object model"
	self alphaAngleElement: [ :anElement | aValueOrAOneArgBlock rtValue: anElement model ]