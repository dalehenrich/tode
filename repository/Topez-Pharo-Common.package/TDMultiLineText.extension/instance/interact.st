*topez-pharo-common
interact
	^ UIManager default
		multiLineRequest: self prompt
		centerAt: Sensor cursorPoint
		initialAnswer: self template
		answerHeight: 200