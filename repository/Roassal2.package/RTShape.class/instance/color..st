accessing
color: aValueOrAOneArgBlock
	"aValueOrAOneArgBlock is applied on the object model"
	self colorElement: [ :anElement | aValueOrAOneArgBlock rtValue: anElement model ]