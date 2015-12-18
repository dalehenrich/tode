computing
sbpath: element
	| att |
	att := element view elements first attributes.
	^ (att includesKey: #sbpath) ifTrue: [ att at: #sbpath ] ifFalse: [ nil ]
	