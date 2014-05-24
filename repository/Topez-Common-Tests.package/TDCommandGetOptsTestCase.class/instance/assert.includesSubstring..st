as yet unclassified
assert: aString includesSubstring: subString
	"Pharo1.4/Pharo2.0 compat"

	self assert: (MetacelloPlatform current string: aString includesSubstring: subString)