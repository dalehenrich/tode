sources
exampleEdgesInTooltip
| v shapeBuilder elementClasses edges background label methods methodElements |
v := RTView new.

"We use the bounded shape builder to:
  - have no element smaller than 5 x 5 "

shapeBuilder := RTBoundedShapeBuilder new.
shapeBuilder 
	rectangle;
	width: [ :c | c numberOfVariables * 7 ]; height: #numberOfMethods.
elementClasses := shapeBuilder elementsOn: RTObject withAllSubclasses.

"For each class, we add a popup that will show the method invocations and the class name"
"The popup uses #group: to specify what is the group of elements to use
#group: takes as argument a two-arg block. The first argument is a RTGroup, to which elements have to be added.
the second argument, aClassElement, is the class element on which the popup is being triggered."
elementClasses @ (RTPopup new group: 
[ :group :aClassElement |
	methods := aClassElement model rtmethods.

	methodElements := (RTBox new color: Color red) elementsOn: methods.

	"We do not want to directly add the edges to the view. We instead need to add the edges to the group"
	edges := RTEdge 
		buildEdgesFromObjects: methods 
		from: #yourself 
		toAll: #dependentMethods
		using: (RTLine new color: Color white)
		scope: methodElements.

	RTTreeLayout on: methodElements edges: edges.
	
	
	background := (RTBox new color: (Color blue alpha: 0.4)) element. 
	RTNest new centerOn: background elements: methodElements.

	label := (RTLabel new text: aClassElement model name asString) element.
	TRConstraint move: label above: background.
	
	group add: label.
	group add: background.	
	group addAll: edges.
	group addAll: methodElements.

]).
v addAll: elementClasses.
RTFlowLayout on: elementClasses.

	^ v