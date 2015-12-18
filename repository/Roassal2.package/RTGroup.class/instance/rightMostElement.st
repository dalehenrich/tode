public
rightMostElement
	"Return the element located on the most left"
	| t |
	t := self first.
	self do: [ :e | (t position x < e position x) ifTrue: [ t := e ] ].
	^ t