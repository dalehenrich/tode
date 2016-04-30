private
registerEventsForPresentation: aPresentation
	super registerEventsForPresentation: aPresentation.
	aPresentation
		when: TDMinimalDebuggerInsertAfterSelection
		send: #actOnInsertAfterSelection:
		to: self