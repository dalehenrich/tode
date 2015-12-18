software visualization
systemComplexity
	"
	self new systemComplexity
	"

	| v els edges |
	v := RTView new.
	els := RTBox new 
				height: [ :c | c numberOfMethods max: 5 ];
				borderColor: Color black;
				width: [ :c | c numberOfVariables * 5 max: 5 ];
				color: (RTGrayLinearColor new command: #numberOfLinesOfCode; scope: Collection withAllSubclasses);
				elementsOn: Collection withAllSubclasses.
	v addAll: els.
	els @ RTDraggable @ RTPopup.

	edges := RTEdge 
			buildEdgesFromObjects: Collection withAllSubclasses 
			from: #superclass 
			to: #yourself 
			using: (RTLine new withVerticallAttachPoint; yourself) 
			inView: v.
	edges do: #moveBehindItsExtremities.

	RTTreeLayout on: v elements.

	v @ RTDraggableView.
	v open