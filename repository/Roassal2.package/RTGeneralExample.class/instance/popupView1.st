popup
popupView1
	"
	self new popupView1
	"
	| v els |
	v := RTView new.
	v @ RTDraggableView.
	els := (RTBox new size: 20) elementsOn: (1 to: 100).
	els + RTLabel.
	
	els @ (RTPopup new group: [ :group :el |
		el model timesRepeat: [
			group add: (RTBox new size: 10; color: (Color purple alpha: 0.5)) element ].
		RTGridLayout on: group. ]).
	
	els @ RTDraggable.
	
	v addAll: els.
	RTGridLayout on: els.
	v open.
