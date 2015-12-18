tests
testLayout
	
	| firstInnerElement secondInnerElement |
	firstInnerElement := b view elements second.
	secondInnerElement := b view elements third.
	"First element is above second element"
	self assert: firstInnerElement position y < secondInnerElement position y