built-ins
deferFlushEventNotificationDuring: aBlock
	"defer flushEventCache until all windows are closed."

	| shouldFlushEventCache |
	shouldFlushEventCache := false.
	aBlock
		on: TDShouldFlushEventCacheNotification
		do: [ :ex | 
			shouldFlushEventCache := true.
			ex resume: false ].
	shouldFlushEventCache
		ifTrue: [ self topezClient flushEventCache ].
