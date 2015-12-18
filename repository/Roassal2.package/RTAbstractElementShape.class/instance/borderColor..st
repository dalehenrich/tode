accessing
borderColor: aValueOrAOneArgBlock
	"aValueOrAOneArgBlock is applied on the object model"
	self borderColorElement: [ :anElement | aValueOrAOneArgBlock rtValue: anElement model ]