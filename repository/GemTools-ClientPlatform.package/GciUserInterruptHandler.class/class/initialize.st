as yet unclassified
initialize
	"self initialize"

	self install.
	Smalltalk addToStartUpList: self.
	self startUp: true