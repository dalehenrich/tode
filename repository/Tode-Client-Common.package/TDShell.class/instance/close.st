built-ins
close
	"close all windows"

	| shouldFlushEventCache |
	windowStatus ifNil: [ ^ nil ].
	shouldFlushEventCache := false.
	[ windowStatus close ]
		on: TDShouldFlushEventCacheNotification
		do: [ :ex | 
			shouldFlushEventCache := true.
			ex resume: false ].
	shouldFlushEventCache
		ifTrue: [ self topezClient flushEventCache ].
	^ nil