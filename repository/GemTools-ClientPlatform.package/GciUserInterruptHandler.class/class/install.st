as yet unclassified
install
	"self install"

	InputEventFetcher default eventHandlers copy
		do: [ :handler | 
			(handler isKindOf: UserInterruptHandler)
				ifTrue: [ handler unregister ] ].
	self new registerIn: InputEventFetcher default