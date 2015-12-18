callbacks
doWithoutCallbacks: aBlock
	"Simply evaluate aBlock"
	| oldCallbacks |
	oldCallbacks := callbacks.
	callbacks := #().
	aBlock value.
	callbacks := oldCallbacks