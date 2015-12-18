configuration
bottomValue: aBlock titled: aTitle
	"The gray bar"
	 | configuration |
	self metric: aBlock color: Color lightGray height: 20.
	
	configuration := RTAxisConfiguration new.
	configuration builder: self.
	configuration title: aTitle.
	configuration titlePosition: (0 @ -30).
	configuration color: Color lightGray.
	configuration minValue: 0.
	configuration positionLabel: [ :aLabel :aTick | aLabel translateTo: aTick position + (0 @ 15) ].
	configuration maxValue: (self points collect: aBlock) max.
	configuration numberOfTicks: 4.
	configuration lineThickness: 3.
	configuration axisFrom: bottomExtremity position to: bottomExtremity position + (width @ 0).
	