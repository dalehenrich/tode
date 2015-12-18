accessing
positionLabel: aTwoArgBlock
	"This method expect a two argblock to set where the label should be"
	"eg. [ :aLabel :aTick | aLabel translateTo: aTick position + (0 @ 15) ]"
	positionLabel := aTwoArgBlock