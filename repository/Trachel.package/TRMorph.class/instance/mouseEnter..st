event handling
mouseEnter: evt
	evt anyButtonPressed ifFalse: [
		self rtMouseEnter: evt.
	].
	evt wasHandled: true.
	^ true