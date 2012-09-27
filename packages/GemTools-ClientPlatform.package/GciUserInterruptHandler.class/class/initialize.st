class initialization
initialize
	"self initialize"
	
	InputEventFetcher default eventHandlers copy do: [:hndlr |
		(hndlr isKindOf: UserInterruptHandler) ifTrue: [ hndlr unregister]].
	self new registerIn: InputEventFetcher default
	