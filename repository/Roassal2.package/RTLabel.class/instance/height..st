accessing
height: aValueOrAOneArgBlock
	"aValueOrAOneArgBlock is applied on the object model"
	self heightElement: [ :anElement | aValueOrAOneArgBlock rtValue: anElement model ]