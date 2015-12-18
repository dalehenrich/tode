animations
playAnimations
	| shouldClean |
	shouldClean := false.
	animations do: [ :animation | 
		animation refresh. 
		animation hasCompleted ifTrue: [ shouldClean := true ] ].
	
	shouldClean ifTrue: [ 
		animations := animations reject: [ :animation | animation hasCompleted ] ].