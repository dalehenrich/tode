public
on: backElement nest: elements
	"public method"

	"backElement is the elements on which elements are layout-ed"

	"- position the elements above backElement. 
	 - resize backElement to encapsulate the elements
	 - perform a layout of the elements if a layout has been set
	 - make the inner elements draggable"

	"We check if the shape of backElement is a composite shape. nested elements should not be on the Label. We manually consider this situation since it is recurrent"

	| indexOfNonLabel |
	(self isCompositeAndHasLabel: backElement)
		ifTrue: [ 
			indexOfNonLabel := self indexOfNonLabelShapeIn: backElement.
			^ self on: backElement inShape: [ :array | array at: indexOfNonLabel ] nest: elements ].
	self doLayoutIfNecessaryOn: elements.
	behavior on: backElement setNested: elements asGroup.
	self mark: backElement with: elements