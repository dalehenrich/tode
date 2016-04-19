services registry
unregisterServiceFor: aMessageSelector
	self servicesRegistry removeKey: aMessageSelector ifAbsent: [  ]