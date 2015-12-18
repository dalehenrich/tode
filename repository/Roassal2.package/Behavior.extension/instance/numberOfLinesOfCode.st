*Roassal2-Core
numberOfLinesOfCode 
	"Return the amount of lines of code"
	
	^ 5 + (self rtmethods inject: 0 into: [:sum :el | sum + el numberOfLinesOfCode ])