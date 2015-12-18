hooks
initializeElement: element
	
	element when: TRMouseEnter do: [ :event | 
		stillInSunburst := true.
		self focus: element. 
		self updateCanvas: element.
		action ifNotNil: [ action value: element model ].
		 ].
	
	element when: TRMouseLeave do: [ :event | | anim |
		stillInSunburst := false.
		anim := RTNopAnimation new
			waitFor: 1 after: [
				stillInSunburst ifFalse: [self restore: element. self updateCanvas: element.].
				 ].
		
		element view addAnimation: anim.
		anim start.
		action ifNotNil: [ action value: nil ] ].