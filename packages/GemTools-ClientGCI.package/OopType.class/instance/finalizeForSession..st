finalization
finalizeForSession: aGciSession

	"Transcript cr; show: 'finalizeForSession: ', self asInteger printString, ' -> ', aGciSession isValid printString."
	aGciSession isValid ifFalse: [ ^self ].
	"Can't make GCI call at this time ... finalization occuring in separate thread and we could end up making concurrent calls'"
	"aGciSession serverPerform: 'unregisterDependent:' with: self."