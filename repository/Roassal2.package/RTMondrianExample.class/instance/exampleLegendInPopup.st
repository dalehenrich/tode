sources
exampleLegendInPopup
	| view |

	view := RTMondrianViewBuilder new.
	view interaction noInteractions.

	view interaction popup group: [ :group :el |
	
		| background elements cls legend1 legend2 | 
		elements := RTGroup new.
		background := (RTBox new color: (Color green alpha: 0.8)) element.
		
		el model timesRepeat: [ 
				cls := RTEllipse.
				50 atRandom > 25
					ifTrue: [ cls := RTBox ].
				elements add: (cls new size: 10; color: (Color purple alpha: 0.5)) element
				].
		RTGridLayout on: elements.
		
		
		"Legend Good"
		legend1 := RTGroup new.
		legend1 add: (RTBox new size: 10; color: (Color purple alpha: 0.5)) element.
		legend1 add: (RTLabel elementOn: '= Good').
		RTHorizontalLineLayout on: legend1.
		
		"Legend Bad"
		legend2 := RTGroup new.
		legend2 add: (RTEllipse new size: 10; color: (Color purple alpha: 0.5)) element.
		legend2 add: (RTLabel elementOn: '= Bad').
		RTHorizontalLineLayout on: legend2.
		
		RTVerticalLineLayout new gapSize: 0; on: (Array with: legend1 with: legend2 with: elements). 
		
			RTNest new centerOn: background elements: (Array with: legend1 with: legend2 with: elements).

		group add: background.
		group addAll: legend1.
		group addAll: legend2.
		group addAll: elements ].

	view shape rectangle size: #yourself.
	view nodes: (1 to:50).
	view gridLayout.
	
	^ view view