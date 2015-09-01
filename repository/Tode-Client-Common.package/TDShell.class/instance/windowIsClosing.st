accessing
windowIsClosing
	| status |
	windowStatus ifNil: [ ^ self ].
	self
		deferFlushEventNotificationDuring: [ 
			windowStatus unregisterShellWindow: self shellWindow.
			status := windowStatus.
			windowStatus := nil.
			status close ].
	status shellWindows isEmpty
		ifTrue: [ self exit ]