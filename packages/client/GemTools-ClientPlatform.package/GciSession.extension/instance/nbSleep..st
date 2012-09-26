*gemtools-clientplatform
nbSleep: anInteger

	| debuggerChoice terminated |
	[ "World displayWorldSafely."
	(Delay forMilliseconds: anInteger) wait.
		 ] 
		on: GciUserInterrupt 
		do: [:ex |
			debuggerChoice := UIManager default chooseFrom:  #('Interrupt GemStone/S' 'Interrupt Squeak' 'Ignore Interrupt')
					title: 'User Interrupt Detected'.
			debuggerChoice = 2										"Squeak" 
				ifTrue: [
					[	terminated := true.
						Processor activeProcess debugWithTitle: 'User Interrupt'.
						terminated := false ] ensure: [
							terminated ifTrue: [ [ self terminateCurrentNbCall ] fork ]]].
			debuggerChoice = 3 ifTrue: [ ex resume].			"Ignore"
			"GemStone/S"
			^self hardBreak ].	
