class initialization
install
	"self install"
	
	InputEventFetcher default eventHandlers copy do: [:hndlr |
		(hndlr isKindOf: UserInterruptHandler) ifTrue: [ hndlr unregister]].
	self new registerIn: InputEventFetcher default
	