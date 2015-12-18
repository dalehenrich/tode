accessing
numberOfLabels: aValue
	numberOfLabels := aValue.
	
	"Cannot have more labels than ticks"
	self numberOfTicks < aValue
		ifTrue: [ self numberOfTicks: aValue ]