accessing
externalRadius: aValueOrAOneArgBlock
	"aValueOrAOneArgBlock is applied on the object model"
	self externalRadiusElement: [ :anElement | aValueOrAOneArgBlock rtValue: anElement model ]