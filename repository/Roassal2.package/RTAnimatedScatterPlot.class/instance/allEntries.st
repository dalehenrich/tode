enumerating
allEntries
	| answer |
	answer := Set new.
	tables do: [ :t | answer addAll: t firstColumn ].
	^ answer asSortedCollection asArray