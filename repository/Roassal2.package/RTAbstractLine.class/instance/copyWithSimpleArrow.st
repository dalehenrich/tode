public
copyWithSimpleArrow
	"Return a new line, the one with arrow"
	| arrow |
	arrow := RTSimpleArrowHead new 
				color: Color red; 
				attachPoint: RTVerticalAttachPoint instance.
	arrow size: 15; baseSize: 10. 
	^ self + arrow