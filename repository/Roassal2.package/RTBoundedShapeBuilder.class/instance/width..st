accessing
width: aBlock
	"width can also be applied to an edge. We have to take this situation into account"
	^ (shape isKindOf: RTAbstractLine)
		ifTrue: [ super width: aBlock ]
		ifFalse: [ super width: [ :v | (aBlock rtValue: v) max: self minimumSize ] ]