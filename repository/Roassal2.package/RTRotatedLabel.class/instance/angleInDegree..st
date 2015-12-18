accessing
angleInDegree: aValueOrAOneArgBlock
	"aValueOrAOneArgBlock is applied on the object model"
	self angleInDegreeElement: [ :anElement | aValueOrAOneArgBlock rtValue: anElement model ]