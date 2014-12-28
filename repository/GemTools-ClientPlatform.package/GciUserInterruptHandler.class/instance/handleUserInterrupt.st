private
handleUserInterrupt
	"This will be called from the event-fetcher process. 
	Assume no system-vital processes have a lower priority than this, and are thus ok to interrupt"

	Interrupted := true.
	Armed
		ifFalse: [ super handleUserInterrupt ]