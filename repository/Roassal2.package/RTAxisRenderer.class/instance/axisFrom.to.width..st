public-rendering
axisFrom: fromPosition to: toPosition width: lineThicknessInPixels
	"THIS IS A PUBLIC METHOD"

	"fromPosition is the starting point of the axis. toPosition is the ending point"

	| ticks labelShape labelValues labels tickIntervalForLabel labelledTicks |
	"We add the labels"
	self axisLineFrom: fromPosition to: toPosition width: lineThicknessInPixels.
	
	"We insert the title if necessary"
	self insertTitleIfNecessaryTo: toPosition.

	
	self numberOfTicks = 0 ifTrue: [ ^ self ].
	ticks := self addTicksFrom: toPosition to: fromPosition.
	self numberOfLabels = 0 ifTrue: [ ^ self ].
	tickIntervalForLabel := self tickIntervalForLabel.
	labelledTicks := (1 to: ticks size by: tickIntervalForLabel) collect: [ :i | ticks at: i ].
	labelValues := (0 to: self numberOfLabels)
		collect: [ :i | self minValue + (i * (self maxValue - self minValue) / self numberOfLabels) ].

	labelShape := RTLabel new 
		text: [ :i | self getStringFromNumber: (labelValues at: i + 1) ];
		height: self labelFontHeight.
	labels := labelShape elementsOn: (0 to: self numberOfLabels).
	labels withIndexDo: [ :label :i | 
		self moveLabel: label againstTick: (labelledTicks at: i).
		self rotateLabelIfNecessary: label.
		label model: nil ].
	
	self addAllToView: labels.	
	labels pushBack