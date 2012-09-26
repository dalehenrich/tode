converting
asInteger

	| int |
	0 <= (int := self getHandle) ifTrue: [^int].
	^int negated + 1.
	