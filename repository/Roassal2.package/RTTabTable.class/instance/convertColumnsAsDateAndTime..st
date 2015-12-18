converting
convertColumnsAsDateAndTime: collectionOfIntegers
	"collectionOfIntegers is a collection of integers corresponding to column to convert"
	"Replace each element by an instance of DateAndTime"

	self convertColumns: collectionOfIntegers to: [ :s | (TRPlatform current dateAndTimeFromString: s) ]