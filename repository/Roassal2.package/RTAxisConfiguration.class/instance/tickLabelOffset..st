accessing
tickLabelOffset: aPoint
	"Specify the offset between the tick and its label"
	self positionLabel: [ :aLabel :aTick | aLabel translateTo: aTick position + aPoint ].