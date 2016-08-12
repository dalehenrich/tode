*Topez-Common-Pharo-Core
interact
	^ UIManager default
		chooseFrom: self labels
		values: self values
		lines: self lines
		title: (self prompt ifNil: [ '' ])