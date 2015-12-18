accessing
borderWidth: aValueOrAOneArgBlock
	"aValueOrAOneArgBlock is applied on the object model"
	self borderWidthElement: [ :anElement | aValueOrAOneArgBlock rtValue: anElement model ]
	