A RTAbstractHighlightable is an highlight mechanism of an element or group of elements. It trigger highlight on mouse enter and reset the highlight on mouse leave. By default it highlight the element itself, but by methods #highlight: and #highlightElements: any other element can be highlighted.

Instance Variables
	highlightElements:		<BlockClosure>

highlightElements
	- it is one argument block (o any object which understand #rtValue:) which returns collection of elements. Those element are then highlighted.
