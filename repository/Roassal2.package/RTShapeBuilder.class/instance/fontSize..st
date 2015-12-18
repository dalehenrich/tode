text shape
fontSize: aValueOrASymbolOrABlock
	"Make sure we have something that this message is meaningful"
	self assert: [ #(RTLabel #RTCompositeShape) includes: shape class name ].
	
	shape class == RTLabel ifTrue: [ shape height: aValueOrASymbolOrABlock. ^ self ].
	shape class == RTCompositeShape ifTrue: [ (shape allShapes select: [ :s | s class == RTLabel ]) do: [ :s | s height: aValueOrASymbolOrABlock ] ]