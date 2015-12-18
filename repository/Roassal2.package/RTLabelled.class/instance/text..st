accessing
text: aValueOrAOneArgBlock
	"aValueOrAOneArgBlock is applied on the object model"
	self textElement: [ :anElement | aValueOrAOneArgBlock rtValue: anElement model ]