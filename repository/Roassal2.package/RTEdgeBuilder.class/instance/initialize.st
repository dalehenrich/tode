initialization
initialize
	super initialize.
	self noRepetition.
	shouldMoveBehind := false.
	shouldNotBeUsedInLayout := true.	"If nil, then elements will be used to lookup"
	elementsToLookup := nil