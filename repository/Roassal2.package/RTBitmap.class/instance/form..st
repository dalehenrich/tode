accessing
form: aValueOrOneArgBlock
	"aValueOrOneArgBlock takes a model as input"
	self formElement: [ :anElement | aValueOrOneArgBlock rtValue: anElement model ]