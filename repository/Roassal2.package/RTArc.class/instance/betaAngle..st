accessing
betaAngle: aValueOrAOneArgBlock
	"aValueOrAOneArgBlock is applied on the object model"
	self betaAngleElement: [ :anElement | aValueOrAOneArgBlock rtValue: anElement model ]