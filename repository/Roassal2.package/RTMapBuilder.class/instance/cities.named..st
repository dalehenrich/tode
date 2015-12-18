adding
cities: objects named: aBlockOrSymbol

	"Not sure why we need to copy each object"
	cities addAll: (objects collect: [ :o | o copy ]).
	cityBuilder name: aBlockOrSymbol.
	^ cityBuilder