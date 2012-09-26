Accessors
windowLabel

	windowLabel == nil ifTrue: [ windowLabel := ' GS[', self number printString, ']'].
	^windowLabel