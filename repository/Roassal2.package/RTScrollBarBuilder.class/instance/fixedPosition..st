as yet unclassified
fixedPosition: aPositionOrABlock
"set the initial position of the scroll bar, if a block, the block will be evaluated with 'cull self'. For example a block [:v | v view canvas extent] will set the position to canvas extent, just as [<myBuilder> view canvas extent]. If you want the scrollBar to be fully free and movable without reset position, set a point for fixedPosition."
	fixedPosition:= aPositionOrABlock 