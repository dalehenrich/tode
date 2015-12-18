hooks
renderIn: aView
	| elements lines lbl |
	numberOfValuesPerRow := values first numberOfValues.
	lines := RTGroup new.
	values
		do: [ :tupple | 
			elements := tupple values asGroup collectWithIndex: [ :aValue :index | self elementOn: aValue -> index ].
			aView addAll: elements.
			lines add: elements ].
	self normalizer
		elements: (lines flatCollect: #yourself);
		normalizeWidth: #key
			min: 0
			max: widthBlock
			minValue: 0
			maxValue: values first totalSum.
	lines
		do: [ :aLineOfElements | 
			RTHorizontalLineLayout new
				gapSize: 0;
				on: aLineOfElements ].
	RTVerticalLineLayout on: lines.
	TRConstraint use: lines first alignFromLeft: lines allButFirst.
	self addLabelToBarIfNecessary.
	values
		with: lines
		do: [ :barRow :line | 
			barRow title
				ifNotNil: [ 
					lbl := (RTLabel new text: barRow title) element.
					aView add: lbl.
					TRConstraint move: lbl onTheLeftOf: line first.
					lbl translateBy: self offsetBetweenBarAndTitle negated @ 0 ] ].
			
	self addLegendIfNecessary