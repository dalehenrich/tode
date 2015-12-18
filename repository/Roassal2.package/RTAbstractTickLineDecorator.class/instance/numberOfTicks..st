accessing
numberOfTicks: nbOfTicks
	self step: [ :axis | (axis maxValue - axis minValue) / nbOfTicks ]