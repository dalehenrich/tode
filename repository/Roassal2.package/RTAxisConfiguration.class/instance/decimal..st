configuration
decimal: anInteger
	"Set the number of decimals"
	self labelConversion: [ :number | number asFloat round: anInteger ]