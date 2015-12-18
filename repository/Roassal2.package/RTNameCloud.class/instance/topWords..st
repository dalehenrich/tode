dictionaries
topWords: index
	"Return the top index words"
	^ ((self sortedAssociations copyFrom: 1 to: index) collect: #key) asArray