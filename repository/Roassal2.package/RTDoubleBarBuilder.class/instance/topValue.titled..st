configuration
topValue: aBlock titled: aTitle
	"The red bar"
	 | configuration |
	self metric: aBlock color: Color red height: 10.
	
	configuration := RTAxisConfiguration new.
	configuration builder: self.
	configuration title: aTitle.
	configuration titlePosition: (0 @ 30).
	configuration color: Color red.
	configuration minValue: 0.
	configuration positionLabel: [ :aLabel :aTick | aLabel translateTo: aTick position - (0 @ 15) ].
	configuration maxValue: (self points collect: aBlock) max.
	configuration numberOfTicks: 4.
	configuration lineThickness: 3.
	configuration axisFrom: topExtremity position to: topExtremity position + (width @ 0).