accessing
innerRadius: aValueOrAOneArgBlock
	"aValueOrAOneArgBlock is applied on the object model"
	self innerRadiusElement: [ :anElement | aValueOrAOneArgBlock rtValue: anElement model ]