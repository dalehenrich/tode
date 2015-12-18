rendering
axisFrom: fromPosition to: toPosition 
	| renderer |
	renderer := RTAxisRenderer new.
	renderer builder: self builder.
	renderer config: self.
	renderer axisFrom: fromPosition to: toPosition width: lineThickness