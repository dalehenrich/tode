*Trachel
getInteractionForClass: eventClass
	"Return true if the receiver has a callback subscripbed for the event class"
	subscriptions do: [ :sub | 
		((sub subscriber class == eventClass) or: 
			[ sub subscriber class inheritsFrom: eventClass ]) ifTrue: [ ^ sub subscriber ] ].

	self error: 'Please, use handleEventClass: before getting the interaction'	
