converting
convertColumnAsDateAndTime: integerOrString
	"Replace each element by an instance of DateAndTime"

	self convertColumnsAsDateAndTime: (Array with: (self convertFromNameToIndexIfNecessary: integerOrString))