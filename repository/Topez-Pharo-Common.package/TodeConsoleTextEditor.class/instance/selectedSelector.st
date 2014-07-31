menu messages
selectedSelector
	"Try to make a selector out of the current text selection"
	^self findSelectorFrom: self selection string 