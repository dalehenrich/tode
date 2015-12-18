public
colorsPerScheme
	"It returns a list of schemes and the numbers of colors it contains"
	|table palette|
	table := OrderedCollection new.
	palette := self palette. 
	palette keysAndValuesDo: [ :k :v | table add:  k -> ((palette at: k) keys) ].
	table asDictionary inspect.