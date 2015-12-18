testing
isValidWord: word
	^ word notEmpty and: [ (self unnecessaryWords includes: word) not ]