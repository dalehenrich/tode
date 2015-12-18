as yet unclassified
doubleScrollBar

"
RTScrollBarBuilderExamples new doubleScrollBar
"
| b b2 b3 |

b := RTMondrian new.
	b shape rectangle 
				withBorder;
				width: [ :cls | cls numberOfVariables * 5];
				height: #numberOfMethods;
				linearFillColor: #numberOfLinesOfCode within: RTObject withAllSubclasses.
	b nodes: RTObject withAllSubclasses.
	b edges connectFrom: #superclass.
	b layout tree.
	b build.
	
b2 := RTScrollBarBuilder new.
b2 view: b view.
b2 orientation: #vertical.
b2 fixedPosition: [ :v | (v view canvas extent x - (v width /2))@(v view canvas extent y /2)].
b2 movable: #isFixed.
b2 size: [ :v | v view canvas extent y].
b2 barShape: #aBox.
b2 build.

b3 := RTScrollBarBuilder new.
b3 view: b view.
b3 fixedPosition: [ :v | (v view canvas extent x / 2)@(v view canvas extent y - (v width /2))].
b3 movable: #isFixed.
b3 size: [ :v | v view canvas extent x].
b3 barShape: #aBox.
b3 build.

^ b view