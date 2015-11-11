initialization
initialize
	"self initialize"

	Smalltalk addToStartUpList: self.
	false
		ifTrue: [ self startUp: true ]