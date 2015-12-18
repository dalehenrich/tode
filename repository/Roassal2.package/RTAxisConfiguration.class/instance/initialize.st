initialization
initialize
	super initialize.
	labelConvertion := [ :number | (number asFloat round: 2) asString ].
	positionLabel := [ :aLabel :aTick | aLabel translateTo: aTick position ].
	labelFontHeight := 12.
	numberOfTicks := 4.
	numberOfLabels := numberOfTicks.
	lineThickness := 1.
	minValue := 0.
	maxValue := 0.
	maxValueManuallySet := false.
	minValueManuallySet := false.
	self twoDecimals.
	self noThousandsSeparator.
	self noTitle.
	color := self defaultColor.
	titlePosition := self defaultTitlePosition.
	self doNotRotateLabels.
	ticksCentered := false.