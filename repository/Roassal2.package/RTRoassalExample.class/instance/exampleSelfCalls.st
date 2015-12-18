sources
exampleSelfCalls

" The RTNest class offer simple methods to encapsulate some elements into a composing elements. Consider for example the following visualization that shows the shape hierarchy in Roassal. Each purple square is a class. Classes are linked with to represent class inheritance. Gray boxes are methods. Relation between methods indicates a possible invocation path between methods within the same class."		
| v classes classElement classElements shapeBuilder methods methodElements |
v := RTView new.
v @ RTDraggableView.

shapeBuilder := RTShapeBuilder new.
shapeBuilder rectangle
	size: [ :m | m linesOfCode min: 60 max: 5 ].

classElements := RTGroup new. 
classes := RTShape withAllSubclasses.
classes do: [ :class |
	classElement := (RTBox new color: (Color blue alpha: 0.4)) elementOn: class.
	classElement @ RTPopup.
	v add: classElement.


	methods := class rtmethods.

	methodElements := shapeBuilder elementsOn: methods.
	v addAll: methodElements.

	RTEdge 
		buildEdgesFromObjects: methods 
		from: #yourself 
		toAll: #dependentMethods 
		inView: v.
	RTTreeLayout on: methodElements.
	methodElements @ RTDraggable @ RTPopup.
	
	RTNest new on: classElement nest: methodElements.
	classElement @ RTDraggable.
	classElements add: classElement.
].

RTEdge buildEdgesFromObjects: classes from: #superclass to: #yourself using: (RTLine new attachPoint: RTVerticalAttachPoint instance) inView: v.
RTTreeLayout on: classElements.

	^ v