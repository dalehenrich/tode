*topez-pharo-common
interact
	^ UIManager default
		multiLineRequest: self prompt
		initialAnswer: self template
		answerHeight: 200