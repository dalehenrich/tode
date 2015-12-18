as yet unclassified
initBuilder
	| lineShape |
	builder view: self view.
	lineShape := RTArrowedLine new color: (Color lightGray alpha:0.5); width: 1.5. 
	lineShape withShorterDistanceAttachPoint.
	lineShape inverted. 
	
	builder shape circle
		borderWidth: 0.02;
		size: 40;
		color: (Color blue alpha: 0.5).
	
	self defaultColorsAndBlocks.	
		
	builder lineShape: lineShape.
	
	builder layout: (RTHorizontalTreeLayout new horizontalGap: 80; verticalGap: 15).	
	
	builder
		onLeftClickExplore: [ :nde | self showPointersTo: nde ] edges: #From;
		withPopup: [:nde | self labelForNode: nde].
	
	
	builder dragChildren.	